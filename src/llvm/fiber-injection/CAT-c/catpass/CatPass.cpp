#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/CFG.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/ADT/SparseBitVector.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/IR/DebugInfo.h"

#include <vector>
#include <set>
#include <unordered_map>
#include <queue>

using namespace llvm;
using namespace std;

#define DEBUG 0
#define INLINE 0
#define INJECT 1
#define FALSE 0

#define WRAPPER_YIELD 0
#define INNER_YIELD 1
#define FIBER_START 2
#define FIBER_CREATE 3
#define IDLE_FIBER_ROUTINE 4

#define GRAN 200
#define CALL_GUARDS 0
#define LOOP_GUARDS 1

#define FREQUENCY 25

const vector<uint32_t> NK_ids = {WRAPPER_YIELD, INNER_YIELD, FIBER_START, FIBER_CREATE, IDLE_FIBER_ROUTINE};
const vector<string> NK_names = {"wrapper_nk_fiber_yield", "nk_fiber_yield", "nk_fiber_start", "nk_fiber_create", "__nk_fiber_idle"};
unordered_map<uint32_t, Function *> FIBERS;

namespace
{
struct debugInfo
{
    // Code injection info:
    int64_t totalLines;
    int64_t totalInjections;
    vector<Instruction *> InjectionLocations;

    // Inline information
    int64_t totalInlines;
    unordered_map<CallInst *, string> failedInlines;
    int64_t numFailedInlines;

    // Info on INITIAL yield calls in module --- print if necessary
    vector<CallInst *> InitCallsToYield;
    int64_t initNumCallsToYield;

    // Info on fiber routines found
    vector<string> RoutineNames;
};

struct CAT : public ModulePass
{
    static char ID;
    debugInfo *DI;

    CAT() : ModulePass(ID) {}

    bool doInitialization(Module &M) override
    {
#if FALSE
        return false;
#endif
        /*
        - Function is not ready to be transformed at this point, metadata is not set
        - Other transformations from the clang command (most likely -fgnu89-inline) modifies
          the bitcode in a way that keeping a pointer to wrapper_nk_fiber_yield may not contain
          the same info seen in doInitialization to the info seen in runOnModule
        */

        // wrapper function, create function needs to be preserved --- set to NoInline
        for (auto CALL : NK_names)
        {
            auto func = M.getFunction(CALL);
            if (func != nullptr)
                func->addFnAttr(Attribute::NoInline);
        }

        return false;
    }

    bool runOnModule(Module &M) override
    {
#if FALSE
        return false;
#endif
        // Find fiber_functions again --- here, it's safe to transform, granted it has not been discarded
        for (auto i : NK_ids)
        {
            auto func = M.getFunction(NK_names[i]);
            if (func != NULL)
                FIBERS[i] = func;
            else
                return false;
        }

        // Get rid of LLVM internals/intrinsics
        StripDebugInfo(M);

#if INJECT
        // Force inlining of nk_fiber_yield (should only occur in wrapper_nk_fiber_yield)
        inlineF(DI, *(FIBERS[INNER_YIELD]));

        // Force inlining of nk_fiber_start to generate direct calls to nk_fiber_create
        inlineF(DI, *(FIBERS[FIBER_START]));

#endif

#if DEBUG
        for (auto const &[id, func] : FIBERS)
        {
            if (!func)
                func->print(errs());
        }

        // To print later
        DI = new debugInfo();

        // Debugging info
        int64_t lines = 0;
        for (auto &F : M)
        {
            for (auto &B : F)
            {
                lines += B.size();

                for (auto &I : B)
                {
                    if (auto *call = dyn_cast<CallInst>(&I))
                    {
                        Function *callee = call->getCalledFunction();
                        if (callee == FIBERS[WRAPPER_YIELD])
                            DI->InitCallsToYield.push_back(call);
                    }
                }
            }
        }
        DI->totalLines = lines;
#endif

#if INJECT
        // IDENTIFY ROUTINES
        set<Function *> FiberRoutines = identifyRoutines(DI, M, FIBERS[FIBER_CREATE]);
#endif

#if DEBUG
        for (auto routine : FiberRoutines)
            DI->RoutineNames.push_back(routine->getName());
#endif
        // INJECTION --- The following will determine where to inject calls, and inject properly for each routine
        for (auto routine : FiberRoutines)
        {

#if DEBUG
            errs() << "\n\n\n\n\n\n\nCURR FUNCTION:\n " << routine->getName() << "\n";
#endif
            /*
             * SETUP --- Keep BasicBlocks stored as a vector of pointers and a map to an ID --- useful
             * to compute the adjusted control flow graph (that uses SparseBitVectors and set differences)
             */

            vector<BasicBlock *> BasicBlocks;
            unordered_map<BasicBlock *, uint64_t> BBIDs;

            uint32_t id = 0;
            for (auto &B : *routine)
            {
                BasicBlocks.push_back(&B);
                BBIDs[&B] = id;
                id++;
            }

            /*
            * GENERATE LATENCY CALCULATIONS --- a pseudo data flow analysis to compute expected
            * and maximum latency for each instruction of the function (based on CMU data --- naive)
            */

            /*
            NOTE: Need adjusted predecessors (i.e. CFG) to generate latencies --- CFG that disregards 
            loop backedges in a routine and allows expected and max latency calculations based on 
            terminator instructions of predecessors
            */

            set<Instruction *> LoopTerminators;
            unordered_map<BasicBlock *, SparseBitVector<>> BackEdgesPredecessors;
            unordered_map<BasicBlock *, SparseBitVector<>> BackEdgesSuccessors;
            findBackEdges(*routine, BBIDs, LoopTerminators, BackEdgesPredecessors, BackEdgesSuccessors);

            unordered_map<BasicBlock *, SparseBitVector<>> AP;
            unordered_map<BasicBlock *, SparseBitVector<>> AS;
            genAdjustedCFG(*routine, BackEdgesPredecessors, BackEdgesSuccessors, BBIDs, AP, AS);

            // Latency calculations
            unordered_map<Instruction *, double> ExpLatencies;
            unordered_map<Instruction *, double> MaxLatencies;
            calculateLatencies(*routine, AP, ExpLatencies, MaxLatencies, BasicBlocks);

            /*
            * FIND INJECTION LOCATIONS --- determine where to inject yield calls based on expected and 
            * maximum latency, given a granularity value X (a macro for now). Specifics are found
            * in the description for findInjectionLocations
            */

            // NOTE: Need a successor graph to generate injection locations
            set<Instruction *> InjectionLocations;

            markInjectionLocationsFromLatencies(&(routine->getEntryBlock()), ExpLatencies, MaxLatencies, AS, BasicBlocks, 0, 0, InjectionLocations);
            markGuardLocations(*routine, LoopTerminators, InjectionLocations);

            /*
             * INJECT CALLS TO YIELD
             */
            injectYield(*routine, FIBERS[WRAPPER_YIELD], InjectionLocations);

#if DEBUG
            SmallVector<pair<const BasicBlock *, const BasicBlock *>, 32> Edges;
            FindFunctionBackedges(*routine, Edges);

            for (uint64_t i = 0, e = Edges.size(); i != e; ++i)
            {
                errs() << "Basic block that has a back-edge coming out of it\n";
                Edges[i].first->print(errs());

                errs() << "Basic Block that contains the back-edge\n";
                Edges[i].second->print(errs());
            }

            errs() << "\n\n\n\n\nBackEdges\n";
            for (auto const &[BB, sbv] : BackEdges)
            {
                errs() << "\n\nCurr frontInst: ";
                BB->front().print(errs());
                errs() << "\n";

                errs() << "Now Back Edges: \n";
                for (auto id : sbv)
                {
                    BasicBlocks[id]->front().print(errs());
                    errs() << "\n";
                }
            }

            errs() << "\n\n\nOnly Predecessors";
            for (auto &B : *routine)
            {
                errs() << "\n\nNew:\n";
                B.front().print(errs());
                errs() << "\nPredecessors:\n";
                for (auto predBB : predecessors(&B))
                {
                    predBB->front().print(errs());
                    errs() << "\n";
                }
            }

            errs() << "\n\n\nOnly Adjusted Predecessors";
            for (auto const &[BB, s] : AP)
            {
                errs() << "\n\n\nCurr Front Instruction :\n";
                BB->front().print(errs());
                errs() << "\nNow Predecessors:\n";
                for (auto predID : s)
                {
                    BasicBlocks[predID]->front().print(errs());
                    errs() << "\n\n";
                }
            }

            errs() << "\n\n\n\n\nBackEdgeSuccessors\n";
            for (auto const &[BB, sbv] : BackEdgeSuccessors)
            {
                errs() << "\n\nCurr frontInst: ";
                BB->front().print(errs());
                errs() << "\n";

                errs() << "Now Back Edges: \n";
                for (auto id : sbv)
                {
                    BasicBlocks[id]->front().print(errs());
                    errs() << "\n";
                }
            }

            errs() << "\n\n\nOnly Successors";
            for (auto &B : *routine)
            {
                errs() << "\n\nNew:\n";
                B.front().print(errs());
                errs() << "\nSuccessors:\n";
                for (auto succBB : successors(&B))
                {
                    succBB->front().print(errs());
                    errs() << "\n";
                }
            }

            errs() << "\n\n\nOnly Adjusted Successors";
            for (auto const &[BB, s] : AS)
            {
                errs() << "\n\n\nCurr Front Instruction :\n";
                BB->front().print(errs());
                errs() << "\nNow AdjSuccessors:\n";
                for (auto succID : s)
                {
                    BasicBlocks[succID]->front().print(errs());
                    errs() << "\n\n";
                }
            }

            errs() << "\n\n\nEXPECTED LATENCIES\n";
            for (auto &B : *routine)
            {
                for (auto &I : B)
                {
                    errs() << ExpLatencies[&I] << "   :    ";
                    I.print(errs());
                    errs() << "\n";
                }
            }

            errs() << "\n\n\nMAXIMUM LATENCIES\n";
            for (auto &B : *routine)
            {
                for (auto &I : B)
                {
                    errs() << MaxLatencies[&I] << "   :    ";
                    I.print(errs());
                    errs() << "\n";
                }
            }

            errs() << "\n\n\n\n\n\n\nINJECTION LOCATIONS\n";
            for (auto inst : InjectionLocations)
            {
                errs() << "Curr Injection Location: ";
                inst->print(errs());
                errs() << "\n";
            }
#endif
        }

#if INLINE
        // INLINING --- inline the wrapper_nk_fiber_yield, inline all routines
        inlineF(DI, *(FIBERS[WRAPPER_YIELD]));
        for (auto routine : FiberRoutines)
            inlineF(DI, *routine);
#endif

            // Cleanup
#if DEBUG
        printDebugInfo(DI);
        free(DI);
        // M.print(errs(), nullptr);
#endif

        return false;
    }

    /*
     * identifyRoutines (REFACTORED)
     * 
     * Iterates over all call instructions. For every CallInst that calls nk_fiber_create, 
     * fetch the first argument of that call (which will be a fcn ptr). Return a set of those
     * pointers. 
     * 
     */

    set<Function *> identifyRoutines(debugInfo *DI, Module &M, Function *parentFuncToFind)
    {
        set<Function *> Routines;

        // Iterate over uses of nk_fiber_create
        for (auto &use : parentFuncToFind->uses())
        {
            User *user = use.getUser();
            if (auto *call = dyn_cast<CallInst>(user))
            {
                // First arg of nk_fiber_create is a fcn ptr to the routine
                auto firstArg = call->getArgOperand(0);
                if (auto *routine = dyn_cast<Function>(firstArg))
                {
                    if (routine != FIBERS[IDLE_FIBER_ROUTINE])
                        Routines.insert(routine); // save the pointer
                }
            }
        }

        return Routines;
    }

    /*
     * findBackEdges --- (REFACTORED)
     * Tracks all back edges that exist in a routine in a bit vector 
     * structure. Applies the FindFunctionBackedges API --- and converts the structure of the  result
     * so that each backedge BasicBlock maps to a bit vector of predecessor/successor basic blocks based 
     * on the backedges found by FindFunctionBackedges. Function also fills out the LoopTerminators
     * set to be used by findInjectionLocations.
     */

    void findBackEdges(Function &F,
                       unordered_map<BasicBlock *, uint64_t> IDs,
                       set<Instruction *> &LT,
                       unordered_map<BasicBlock *, SparseBitVector<>> &BEP,
                       unordered_map<BasicBlock *, SparseBitVector<>> &BES)
    {
        // Takes FindFunctionBackedges API result --- reorganizes it for this pass
        SmallVector<pair<const BasicBlock *, const BasicBlock *>, 32> Edges;
        FindFunctionBackedges(F, Edges);

        for (uint64_t i = 0, e = Edges.size(); i != e; ++i)
        {
            BasicBlock *BEBlock = const_cast<BasicBlock *>(Edges[i].first);      // The predecessor (back-edge) block
            BasicBlock *BEContainer = const_cast<BasicBlock *>(Edges[i].second); // The block that contains a back-edge

            // Insert the block that contains the back-edge --- will contain the last instruction of loop
            LT.insert(BEContainer->getTerminator());

            // Predecessors
            if (BEP.find(BEContainer) == BEP.end())
                BEP[BEContainer] = SparseBitVector<>();

            BEP[BEContainer].set(IDs[BEBlock]);

            // Successors
            if (BES.find(BEBlock) == BES.end())
                BES[BEBlock] = SparseBitVector<>();

            BES[BEBlock].set(IDs[BEContainer]);
        }

        return;
    }

    /*
     * genAdjustedCFG --- (REFACTORED)
     * Generates a slightly different mapping of predecessors and successors for the BasicBlocks 
     * in a function. Since the current pass ignores backedges in loops --- the adjustedPredecessors/Successors 
     * (AP, AS) data structure needs to prevent tracking of backedges. Set difference (using bit vectors) is 
     * performed to account for thisnuance.
     */

    void genAdjustedCFG(Function &F,
                        unordered_map<BasicBlock *, SparseBitVector<>> &BEP,
                        unordered_map<BasicBlock *, SparseBitVector<>> &BES,
                        unordered_map<BasicBlock *, uint64_t> &IDs,
                        unordered_map<BasicBlock *, SparseBitVector<>> &AP,
                        unordered_map<BasicBlock *, SparseBitVector<>> &AS)
    {
        // Generate a pseudo CFG based on successors and predecessors --- all back-edges are removed from the graph
        for (auto &B : F)
        {
            // Predecessors
            AP[&B] = SparseBitVector<>();

            for (auto predBB : predecessors(&B))
                AP[&B].set(IDs[predBB]);

            if (BEP.find(&B) != BEP.end())
                AP[&B] = AP[&B] - BEP[&B];

            // Successors
            AS[&B] = SparseBitVector<>();

            for (auto succBB : successors(&B))
                AS[&B].set(IDs[succBB]);

            if (BES.find(&B) != BES.end())
                AS[&B] = AS[&B] - BES[&B];
        }

        return;
    }

    /*
     * calculateLatencies --- NEEDS REFACTORING ---
     * Calculates expected and maximum latencies for all instructions in a routine. The mechanics
     * of the calculations are described below. calculateLatencies applies an altered worklist 
     * algorithm. All BasicBlocks are considered at initial execution of the algorithm. However, 
     * successors are not considered as there is no fixed point when calculating maximum and 
     * expected latencies (possible). Instead, the current block is considered IFF expected and 
     * maximum latencies exist for the previous block. If not, the block is pushed back to the worklist
     */

    // *** NEEDS REFACTORING ***
    void calculateLatencies(Function &F,
                            unordered_map<BasicBlock *, SparseBitVector<>> &adjustedPredecessors,
                            unordered_map<Instruction *, double> &EXP,
                            unordered_map<Instruction *, double> &MAX,
                            vector<BasicBlock *> &BasicBlocks)
    {
        queue<BasicBlock *> workList;
        for (auto &B : F)
            workList.push(&B);

        while (!workList.empty())
        {
            BasicBlock *currBlock = workList.front();
            Instruction *frontInst = &(currBlock->front());
            workList.pop();

#if DEBUG
            frontInst->print(errs());
            errs() << "\n";
#endif

            vector<BasicBlock *> adjustedPredBB;
            bool readyToCompute = true;

            // Check if the currBlock is ready for calculations
            if (adjustedPredecessors.find(currBlock) != adjustedPredecessors.end())
            {
                for (auto BBID : adjustedPredecessors[currBlock])
                {
                    BasicBlock *realPred = BasicBlocks[BBID];
                    adjustedPredBB.push_back(realPred);
                    Instruction *realPredTerminator = realPred->getTerminator();

                    /* 
                    If expected or maximum latencies of the predecessor blocks don't exist (i.e. 
                    if no entries exist for the first instruction) --- then this block is not ready
                    for computation. Push back to the workList and continue.
                    */

                    if (EXP.find(realPredTerminator) == EXP.end() ||
                        MAX.find(realPredTerminator) == MAX.end())
                    {
                        readyToCompute = false;
                        break;
                    }
                }
            }

            if (!readyToCompute)
            {
                workList.push(currBlock);
                continue;
            }

            /* 
            * 
            * **** READY TO COMPUTE ****
            * Calculate expected and max latencies
            * 
            * NOTE: Pseudo data flow analysis is as follows --- EXPECTED:
            * - GEN[I] = getLatency(I)
            * - IN[I] = expectedVal(OUT[all predInst to I])
            * - OUT[I] = IN[I] + GEN[I] --- OUT[I] is the EXPECTED LATENCY of I
            * 
            * NOTE: Pseudo data flow analysis is as follows --- MAXIMUM:
            * - GEN[I] = getLatency(I)
            * - IN[I] = max(OUT[all predInst to I])
            * - OUT[I] = IN[I] + GEN[I] --- OUT[I] is the MAXIMUM LATENCY of I
            * 
            * NOTE: When computing the data flow analysis --- IGNORE BACK EDGES FOR LOOPS
            * 
            */

            for (auto &I : *currBlock)
            {
                EXP[&I] = 0.0;
                MAX[&I] = 0.0;
            }

            // Calculate latency of first instruction to a basic block
            double frontLatency = getLatency(frontInst); // GEN[frontInst]
            vector<double> predInstMaxLatencies;

            /*
             * If there are predecessors to this basic block --- maximum and expected 
             * latencies of the first instruction of the current will depend on the maximum and 
             * expected latencies of the terminators of the predecessor basic blocks. If not, 
             * then maximum and expected latencies of the first instruction to the current 
             * block will be found using GEN[frontInst] 
             */
            if (adjustedPredBB.size() > 0)
            {
                for (auto predBB : adjustedPredBB)
                {
                    Instruction *terminatorPredInst = predBB->getTerminator();

                    // IN[frontInst] = expectedVal(OUT[all predInst to frontInst]) --- divide later
                    EXP[frontInst] += EXP[terminatorPredInst];

                    // IN[frontInst] = max(OUT[all predInst to frontInst]) --- take max later
                    predInstMaxLatencies.push_back(MAX[terminatorPredInst]);
                }

                EXP[frontInst] = (EXP[frontInst] / adjustedPredBB.size()) + frontLatency;
                MAX[frontInst] = *max_element(predInstMaxLatencies.begin(), predInstMaxLatencies.end()) + frontLatency;
            }
            else
            {
                EXP[frontInst] = frontLatency;
                MAX[frontInst] = frontLatency;
            }

            // Propagate the maximum and expected latency of the first instruction through the current block
            auto propagatingEXP = EXP[frontInst];
            auto propagatingMAX = MAX[frontInst];

            for (auto iter = (++currBlock->begin()); iter != currBlock->end(); ++iter)
            {
                auto I = &*iter;
                double currLatency = getLatency(I); // GEN[I]

                // OUT[I] = IN[I] + GEN[I]
                // set propagating vars to new OUT set

                EXP[I] = propagatingEXP + currLatency;
                propagatingEXP = EXP[I];

                MAX[I] = propagatingMAX + currLatency;
                propagatingMAX = MAX[I];
            }

            /*
            ************ POTENTIAL BUG ************ 
            for (auto succBB : successors(currBlock))
                workList.push(succBB);
            */
        }

        return;
    }

    /*
     * Finding Injection Locations ---
     * Computes the locations to inject a yield call based on the specific constraints:
     * - Each call instruction is assumed to have high latency --- inject yield before and after
     *   call instruction (markGuardLocations)
     * - Identify first instruction in func that has an EXPECTED latency that exceeds X. Inject
     *   yield call before that instruction. "Reset" and continue. (markInjectionLocationsFromLatencies)
     * - Separately, identify first instruction in func that has a MAX latency that exceeds X. Inject
     *   yield call before that instruction. "Reset" and continue. (markInjectionLocationsFromLatencies)
     * - If a loop is identified, inject yield call at the end of the loop block (i.e. for each 
     *   iteration). No effort is done to idenfiy how many iterations will exceed X in expected or 
     *   maximum latency (future optimiztion) (markGuardLocations)
     */

    // ************ NEEDS MAJOR REFACTORING (RECURSION + LARGE STACK) ************
    void markInjectionLocationsFromLatencies(BasicBlock *B,
                                             unordered_map<Instruction *, double> &EXP,
                                             unordered_map<Instruction *, double> &MAX,
                                             unordered_map<BasicBlock *, SparseBitVector<>> &AS,
                                             vector<BasicBlock *> &BasicBlocks,
                                             double lastEXPHit,
                                             double lastMAXHit,
                                             set<Instruction *> &IL)
    {
        double newLastEXPHit = lastEXPHit;
        double newLastMAXHit = lastMAXHit;

        for (auto &I : *B)
        {
            if (isa<PHINode>(&I)) // Cannot inject in PHI Node block --- breaks LLVM invariant
                continue;

            // Find injection locations based on expected latencies
            if ((EXP[&I] - newLastEXPHit) > GRAN)
            {
                IL.insert(&I);
                newLastEXPHit = EXP[&I];
            }

            // Find injection locations based on maximum latencies
            if ((MAX[&I] - newLastMAXHit) > GRAN)
            {
                IL.insert(&I);
                newLastMAXHit = MAX[&I];
            }
        }

        /*
        Depth first --- Each path down the adjusted successors (CFG) through the exiting block(s) is treated
        separately. Injection locations along these paths will be marked recursively (based on expected and 
        maximum latencies)
        */

        // ************ NEEDS MAJOR REFACTORING (RECURSION + LARGE STACK) ************
        for (auto ID : AS[B])
            markInjectionLocationsFromLatencies(BasicBlocks[ID], EXP, MAX, AS, BasicBlocks, newLastEXPHit, newLastMAXHit, IL);
    }

    void markGuardLocations(Function &F,
                            set<Instruction *> &LT,
                            set<Instruction *> &IL)
    {

#if CALL_GUARDS
        for (auto &B : F)
        {
            for (auto &I : B)
            {
                // Find injection locations based on call sites
                if (auto *call = dyn_cast<CallInst>(&I))
                {
                    /*
                     * Insert a "guard" before and after a call --- store the call 
                     * instruction (covers the 'before'), and the instruction after
                     * the call instruction (covers the 'after')
                     */

                    // Ignore LLVM internals/intrinsic calls
                    Function *callee = call->getCalledFunction();
                    if (callee->isIntrinsic())
                        continue;

                    IL.insert(&I);
                    IL.insert(I.getNextNode());
                }
            }
        }
#endif

#if LOOP_GUARDS
        // Find injection locations based on terminating instructions of loop blocks
        for (auto loopTerminator : LT)
            IL.insert(loopTerminator);
#endif

        return;
    }

    double getLatency(Instruction *I) // CMU Data (~10 years old)
    {                                 // Instruction Latency for Core 2, 65nm
        int opcode = I->getOpcode();
        double cost;
        switch (opcode)
        {
        // Terminator instructions
        case Instruction::Ret:
            cost = 1;
            break;
        case Instruction::Br:
            cost = 0;
            break;
        case Instruction::Switch:
            cost = 0;
            break;
        // Standard binary operators
        case Instruction::Add:
            cost = 1;
            break;
        case Instruction::FAdd:
            cost = 4;
            break;
        case Instruction::Sub:
            cost = 1;
            break;
        case Instruction::FSub:
            cost = 4;
            break;
        case Instruction::Mul:
            cost = 3;
            break;
        case Instruction::FMul:
            cost = 4;
            break;
        case Instruction::UDiv:
            cost = 17;
            break;
        case Instruction::SDiv:
            cost = 17;
            break;
        case Instruction::FDiv:
            cost = 24;
            break;
        case Instruction::URem:
            cost = 17;
            break;
        case Instruction::SRem:
            cost = 17;
            break;
        case Instruction::FRem:
            cost = 24;
            break;
        // logical operators (integer operands)
        case Instruction::Shl:
            cost = 7;
            break;
        case Instruction::LShr:
            cost = 7;
            break;
        case Instruction::AShr:
            cost = 7;
            break;
        case Instruction::And:
            cost = 1;
            break;
        case Instruction::Or:
            cost = 1;
            break;
        case Instruction::Xor:
            cost = 1;
            break;
        // Vector ops
        case Instruction::ExtractElement:
            cost = 0;
            break; // TODO
        case Instruction::InsertElement:
            cost = 0;
            break; // TODO
        case Instruction::ShuffleVector:
            cost = 0;
            break; // TODO
        // Aggregate ops
        case Instruction::ExtractValue:
            cost = 0;
            break; // TODO
        case Instruction::InsertValue:
            cost = 0;
            break; // TODO
        // Memory ops
        case Instruction::Alloca:
            cost = 2;
            break;
        case Instruction::Load:
            cost = 2;
            break;
        case Instruction::Store:
            cost = 2;
            break;
        case Instruction::Fence:
            cost = 0;
            break; // TODO
        case Instruction::AtomicCmpXchg:
            cost = 0;
            break; // TODO
        case Instruction::AtomicRMW:
            cost = 0;
            break; // TODO
        case Instruction::GetElementPtr:
            cost = 1;
            break;
            // Cast operators
        case Instruction::PHI:
            cost = 0; // this is on purpose --- gets around the PHIGroup issue
            break;
        case Instruction::ICmp:
            cost = 6; // this is random
            break;
        case Instruction::Call:
        {
            // **** POSSIBLE BUG ****
            /*
            if (auto *call = dyn_cast<CallInst>(I)) // don't want to involve LLVM internals
            {
                Function *callee = call->getCalledFunction();
                if (callee != nullptr)
                {
                    if (callee->isIntrinsic())
                    {
                        call->print(errs());
                        errs() << "\n";
                        cost = 0;
                    }
                    else
                        cost = 100;
                }
                else
                    cost = 100;
            }
            */

            cost = 100;

            break;
        }
        default:
        {
#if DEBUG
            errs() << "DEFAULT\n";
            I->print(errs());
            errs() << "\n";
#endif
            cost = 14; // this is random
            break;
        }
        }

        return cost;
    }

    /*
     * injectYield
     * 
     * Iterates over all fiber routines (from identyRoutines) and marks every 10th bitcode 
     * instruction as an injection location. Iterate over all those locations to inject a 
     * call to wrapper_nk_fiber_yield
     * 
     */

    void injectYield(Function &F, Function *funcToInsert, set<Instruction *> &IL)
    {
        // Build CallInst to yield, insert into routine
        for (auto i : IL)
        {
#if DEBUG
            errs() << "\n\nCurrent instruction from IL: ";
            i->print(errs());
            errs() << "\n";
#endif
            // Inject yield call
            IRBuilder<> builder{i};
            CallInst *yieldCall = builder.CreateCall(funcToInsert, None);
            yieldCall->setDebugLoc(i->getDebugLoc()); // Fix lost dbg metadata

#if DEBUG
            errs() << "yieldCall CallInst: ";
            yieldCall->print(errs());
            errs() << "\n";

            DI->totalInjections++; // debugging info
#endif
        }

        return;
    }

    /*
     * inlineF
     * 
     * Iterate over all the uses of a function (passed as arg), and inline wherever possible
     * 
     */

    void inlineF(debugInfo *DI, Function &F)
    {
        vector<CallInst *> CIToIterate;
        InlineFunctionInfo IFI;

#if DEBUG
        errs() << "Function: " << F.getName() << "\n";
        F.print(errs());
        errs() << "\n";
#endif

        for (auto &use : F.uses())
        {
            User *user = use.getUser();

#if DEBUG
            errs() << "Current User: ";
            user->print(errs());
            errs() << "\n";
#endif

            if (auto *call = dyn_cast<CallInst>(user))
            {
#if DEBUG
                errs() << "Call to push back: \n";
                call->print(errs());
#endif
                CIToIterate.push_back(call);
            }
        }

        for (auto CI : CIToIterate)
        {
#if DEBUG
            errs() << "Current CI: ";
            CI->print(errs());
            errs() << "\n";
#endif

            auto inlined = InlineFunction(CI, IFI);
            if (!inlined)
            {

#if DEBUG
                errs() << "Didn't inline --- failed at the following CI: \n";
                CI->print(errs());
                errs() << "\n";
                errs() << "INLINED failure message is: " << inlined.message << "\n";
                DI->failedInlines[CI] = inlined.message;
                // DI->numFailedInlines++;
#endif

                abort();
            }
#if DEBUG
            else
            {
                // DI->totalInlines++;
                errs() << "**** Successful Inline ****\n";
            }
#endif
        }
        return;
    }

    void printDebugInfo(debugInfo *DI)
    {
        errs() << "\n\n\nDEBUGGING INFO\n";
        errs() << "Total Lines: " << DI->totalLines << "\n";
        errs() << "Total Injections: " << DI->totalInjections << "\n";
        // for (auto IL : DI->InjectionLocations)
        // {
        //     errs() << "Injection Location: ";
        //     IL->print(errs());
        //     errs() << "\n";
        // }

        // errs() << "Total Inlines: " << DI->totalInlines << "\n";
        // errs() << "Total Failed Inlines: " << DI->numFailedInlines << "\n";

        // DI->initNumCallsToYield = DI->InitCallsToYield.size();
        // errs() << "Initial Number of Calls To Yield: " << DI->initNumCallsToYield << "\n";

        // if (DI->totalInlines == 0)
        // {
        //     errs() << "All initial calls to yield:\n";
        //     for (auto call : DI->InitCallsToYield)
        //     {
        //         errs() << "Call: ";
        //         call->print(errs());
        //         errs() << "\n";
        //     }
        // }

        errs() << "Routines found: \n";
        for (auto name : DI->RoutineNames)
            errs() << name << "\n";

        return;
    }

    void getAnalysisUsage(AnalysisUsage &AU) const override
    {
        return;
    }
}; // namespace
} // namespace

char CAT::ID = 0;
static RegisterPass<CAT> X("CAT", "Shell for code injection --- yields");

static CAT *_PassMaker = NULL;
static RegisterStandardPasses _RegPass1(PassManagerBuilder::EP_OptimizerLast,
                                        [](const PassManagerBuilder &, legacy::PassManagerBase &PM) {
        if(!_PassMaker){ PM.add(_PassMaker = new CAT());} });
static RegisterStandardPasses _RegPass2(PassManagerBuilder::EP_EnabledOnOptLevel0,
                                        [](const PassManagerBuilder &, legacy::PassManagerBase &PM) {
        if(!_PassMaker){ PM.add(_PassMaker = new CAT()); } });

