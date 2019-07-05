#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Constants.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/Analysis/CallGraph.h"
#include "llvm/Transforms/Utils/Cloning.h"

#include <vector>

using namespace llvm;
using namespace std;

#define DEBUG 1

#define MARKER "p6pbbUlpLo0BL1bM2k8K"
#define YIELD_CALL "nk_fiber_yield"

/* *** Basic pass to insert the "nk_fiber_yield" function call every 50 lines of code. *** 
 * 
 * Technical issues:
 * - [PARTIALLY SOLVED] Injecting function that doesn't exist in current module (i.e. yield)
 *   Ideas --- Function::Create (with IRBuilder) will create a shell, stil could have an empty body (THIS SOLUTION CHOSEN)
 *         --- add necessary files in addition to the -CIY flag upon compilation (Simone's solution?)
 *         --- write a function that extracts nk_fiber_yield from some Nautilus source file and keeps it in this module
 * 
 * - [SOLVED] Pass is invoked repeatedly since bitcode is modified each time code injections occur
 *   Ideas --- End pass invocation after certain number of injections are introduced
 *         --- Complete one pass invocation ONLY, prevent reinvocation of pass by introducing a marker function,
 *             pass will terminate upon finding the marker function (THIS SOLUTION CHOSEN)
 * 
 * Conceptual issues:
 * - Injecting yield calls is not smart in all occurrences (e.g. critical sections, presence of locks, etc.)
 * 
 */

Function *MARKER_FUNC = NULL; // A dummy function --- if this function exists, terminate the pass (will occur after one invocation)

namespace
{

// Useful to print out information later.
struct debugInfo
{
    // Simple stats right now

    // Code injection info:
    int64_t totalLines;
    int64_t totalInjections;
    bool marker_exists = false;
    // int64_t failedInjections // May not need
};

struct CIY : public ModulePass
{
    static char ID;
    debugInfo *DI;

    CIY() : ModulePass(ID) {}

    bool doInitialization(Module &M) override
    {
        // Look for the marker name, set the global marker function var if it exists
        auto marker = M.getFunction(MARKER);
        if (marker != NULL)
            MARKER_FUNC = marker;

        return false;
    }

    bool runOnModule(Module &M) override
    {
        // If the marker function exists, terminate pass
        if (MARKER_FUNC != NULL)
            return false;

        // Declare yield in the module first
        LLVMContext &Context = M.getContext();
        IRBuilder<> builder(Context);
        FunctionType *FT_int = FunctionType::get(builder.getInt32Ty(), false);
        Function *yield_func = Function::Create(FT_int, Function::ExternalLinkage, YIELD_CALL, M);

        // If nk_fiber_yield is not declared properly, terminate pass
        // ---- FIX ---- (more appropriate way to track function declaration)
        if (yield_func->getName() != YIELD_CALL)
            return false;

        // To print later
        DI = new debugInfo();

        // Debugging info
        int64_t lines = 0;
        for (auto &F : M)
        {
            for (auto &B : F)
                lines += B.size();
        }
        DI->totalLines = lines;

        // Declare marker function
        FunctionType *FT_void = FunctionType::get(builder.getVoidTy(), false);
        Function *marker_func = Function::Create(FT_void, Function::ExternalLinkage, MARKER, M);

        if (marker_func->getName() == MARKER)
            DI->marker_exists = true;

        /*
        ANALYZING --- analye the module, highlight blocks where injecting a yield may not be a good idea
        TODO: analyzeModule(DI, M);

        INLINING --- optional at the moment
        CallGraph &CG = getAnalysis<CallGraphWrapperPass>().getCallGraph();

        for (auto &F : M)
        {
            if (F.empty())
                continue;
            inlineF(F, CG);
        }
        */

        // INJECTING --- insert function call
        injectYield(DI, M, yield_func);

        // Cleanup
#if DEBUG == 1
        printDebugInfo(DI);
#endif
        free(DI);

        return false;
    }

    /*
    bool onFunction(Function &F) 
    {
        return false;
    }
    */

    void injectYield(debugInfo *DI, Module &M, Function *funcToInsert)
    {
        int64_t count = 0;
        vector<Instruction *> InstructionsToInject;

        // Mark locations to inject
        for (auto &F : M)
        {
            for (auto &B : F)
            {
                for (auto &I : B)
                {
                    count++;
                    if (count == 3)
                    {
#if DEBUG == 1
                        errs() << "\nCurrrent instruction push_back: ";
                        I.print(errs());
                        errs() << "\n";
#endif
                        InstructionsToInject.push_back(&I);
                        count = 0;
                    }
                }
            }
        }

        // Build CallInst to yield, insert into module
        for (auto i : InstructionsToInject)
        {
#if DEBUG == 1
            errs() << "\n\nCurrent instruction from InstructionsToInject: ";
            i->print(errs());
            errs() << "\n";
#endif

            // inject yield call
            IRBuilder<> builder{i};
            CallInst *yieldCall = builder.CreateCall(funcToInsert, None);

#if DEBUG == 1
            errs() << "yieldCall CallInst: ";
            yieldCall->print(errs());
            errs() << "\n";
            Function *callee = yieldCall->getCalledFunction();
            if (callee->getName() == YIELD_CALL)
                errs() << "yieldCall function matches nk_fiber_yield\n";
#endif

            DI->totalInjections++; // debugging info
        }

        return;
    }

    void inlineF(Function &F, CallGraph &CG)
    {
        // Naive inlining --- by instruction count

        bool modified = false;
        CallGraphNode *n = CG[&F];

        // Limit growth of function
        auto base_count = 0;
        for (auto &B : F)
            base_count += B.size();

        if (base_count > 50)
            return;

        for (auto callee : *n)
        {
            auto callInst = callee.first;
            auto callNode = callee.second;

            if (!callInst)
                continue;

            if (auto *call = dyn_cast<CallInst>(callInst))
            {
                // Limit inlining by instructions
                auto in_count = 0;
                for (auto &B : *call->getCalledFunction())
                    in_count += B.size();

                if (callNode->getNumReferences() > 3 && in_count > 100)
                    continue;

                InlineFunctionInfo IFI;
                if (InlineFunction(call, IFI))
                {
                    modified = true;
                    break;
                }
            }
        }

        if (modified)
            inlineF(F, CG);

        return;
    }

    void printDebugInfo(debugInfo *DI)
    {
        errs() << "\n\n\nDEBUGGING INFO\n";
        errs() << "Total Lines: " << DI->totalLines << "\n";
        errs() << "Total Injections: " << DI->totalInjections << "\n";
        errs() << "Marker Exists: " << DI->marker_exists << "\n";
        return;
    }

    void getAnalysisUsage(AnalysisUsage &AU) const override
    {
        AU.addRequired<CallGraphWrapperPass>();
        return;
    }
};
} // namespace

char CIY::ID = 0;
static RegisterPass<CIY> X("CIY", "Shell for code injection --- yields");

static CIY *_PassMaker = NULL;
static RegisterStandardPasses _RegPass1(PassManagerBuilder::EP_OptimizerLast,
                                        [](const PassManagerBuilder &, legacy::PassManagerBase &PM) {
        if(!_PassMaker){ PM.add(_PassMaker = new CIY());} });
static RegisterStandardPasses _RegPass2(PassManagerBuilder::EP_EnabledOnOptLevel0,
                                        [](const PassManagerBuilder &, legacy::PassManagerBase &PM) {
        if(!_PassMaker){ PM.add(_PassMaker = new CIY()); } });

