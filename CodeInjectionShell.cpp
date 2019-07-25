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
#include "llvm/Transforms/Utils/Cloning.h"

#include <vector>
#include <map>
#include <set>

using namespace llvm;
using namespace std;

#define DEBUG 0
static string CALLS[] = {"wrapper_nk_fiber_yield", "nk_fiber_create"};

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
    map<CallInst *, string> failedInlines;
    int64_t numFailedInlines;

    // Info on INITIAL yield calls in module --- print if necessary
    vector<CallInst *> InitCallsToYield;
    int64_t initNumCallsToYield;
};

struct CAT : public ModulePass
{
    static char ID;
    debugInfo *DI;

    CAT() : ModulePass(ID) {}

    bool doInitialization(Module &M) override
    {
        /*
        - Function is not ready to be transformed at this point, metadata is not set
        - Other transformations from the clang command (most likely -fgnu89-inline) modifies
          the bitcode in a way that keeping a pointer to wrapper_nk_fiber_yield may not contain
          the same info seen in doInitialization to the info seen in runOnModule
        */

        // wrapper function, create function needs to be preserved --- set to NoInline
        for (auto CALL : CALLS)
        {
            auto func = M.getFunction(CALL);
            if (func != nullptr)
                func->addFnAttr(Attribute::NoInline);
        }

        return false;
    }

    bool runOnModule(Module &M) override
    {
        // Find wrapper and create functions again --- here, it's safe to transform, granted it has not been discarded
        Function *YIELD = M.getFunction(CALLS[0]);
        Function *CREATE = M.getFunction(CALLS[1]);

        if (!YIELD || !CREATE)
            return false;

#if DEBUG
        YIELD->print(errs());
        CREATE->print(errs());

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
                        if (callee == YIELD)
                            DI->InitCallsToYield.push_back(call);
                    }
                }
            }
        }
        DI->totalLines = lines;
#endif

        // ANALYZING --- analyze the module, highlight blocks where injecting a yield may not be a good idea:
        //           --- highlight and ignore tight loops, unroll loops if possible, etc.
        // TODO: analyzeModule(DI, M);

        // IDENTIFY ROUTINES
        set<Function *> FiberRoutines = identifyRoutines(DI, M, CREATE);

#if DEBUG
        for (auto routine : FiberRoutines)
            errs() << routine->getName() << "\n";
#endif

        // INJECTING --- insert function call (only inside fiber routines)
        injectYield(DI, M, YIELD, FiberRoutines);

        // INLINING --- optional at the moment (possible with flags)
        for (auto &F : M)
        {
            // Ignore bitcode level debugging/LLVM internals
            if (F.isIntrinsic())
                continue;

            if (F.empty())
                continue;

            // Inline wrapper_nk_fiber_yield
            if (&F == YIELD)
                inlineF(F);
        }

        // Cleanup
#if DEBUG
        printDebugInfo(DI);
        free(DI);
        // M.print(errs(), nullptr);
#endif

        return false;
    }

    set<Function *> identifyRoutines(debugInfo *DI, Module &M, Function *parentFuncToFind)
    {
        set<Function *> Routines;
        for (auto &F : M)
        {
            for (auto &B : F)
            {
                for (auto &I : B)
                {
                    if (auto *call = dyn_cast<CallInst>(&I))
                    {
                        Function *callee = call->getCalledFunction();

                        // Don't look for function if it's LLVM internals/NULL
                        if (callee == nullptr || callee->isIntrinsic())
                            continue;

#if DEBUG
                        errs() << "\n\n\n\n\n";
                        errs() << "Current CallInst: ";
                        call->print(errs());
                        errs() << "\n";
                        errs() << "callee is "
                               << callee->getName();
                        errs() << "\n";
#endif

                        if (callee == parentFuncToFind)
                        {
                            // First arg of nk_fiber_create is a fcn ptr to the routine
                            auto firstArg = call->getArgOperand(0);
                            if (auto *routine = dyn_cast<Function>(firstArg))
                                Routines.insert(routine); // save the pointer

                        }
                    }
                }
            }
        }

        return Routines;
    }

    void injectYield(debugInfo *DI, Module &M, Function *funcToInsert, set<Function *> Routines)
    {
        int64_t count = 0;
        vector<Instruction *> InstructionsToInject;

        // Mark locations to inject --- currently every 10 bitcode instructions of every routine
        for (auto routine : Routines)
        {
            for (auto &B : *routine)
            {
                for (auto &I : B)
                {
                    if (isa<PHINode>(&I)) // Can't inject in PHINode block, breaks LLVM invariant
                        continue;

                    count++;
                    if (count == 10) // Naive implementation injects every 10 bitcode instructions
                    {
#if DEBUG
                        errs() << "\nCurrrent instruction to push back: ";
                        I.print(errs());
                        errs() << "\n";
#endif
                        InstructionsToInject.push_back(&I);
                        count = 0;
                    }
                }
            }
        }

#if DEBUG
        DI->InjectionLocations = InstructionsToInject;
#endif

        // Build CallInst to yield, insert into module
        for (auto i : InstructionsToInject)
        {
#if DEBUG
            errs() << "\n\nCurrent instruction from InstructionsToInject: ";
            i->print(errs());
            errs() << "\n";
#endif
            // Inject yield call
            IRBuilder<> builder{i};
            CallInst *yieldCall = builder.CreateCall(funcToInsert, None);
            yieldCall->setDebugLoc(i->getDebugLoc()); // ACTUAL fix for lost dbg info when inlineF is executed

#if DEBUG
            errs() << "yieldCall CallInst: ";
            yieldCall->print(errs());
            errs() << "\n";

            //Sanity check
            Function *callee = yieldCall->getCalledFunction();
            if (callee == funcToInsert)
                errs() << "yieldCall function matches nk_fiber_yield\n";

            DI->totalInjections++; // debugging info
#endif
        }

        return;
    }

    void inlineF(Function &F)
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
                DI->numFailedInlines++;
#endif

                abort();
            }
#if DEBUG
            else
            {
                DI->totalInlines++;
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
        for (auto IL : DI->InjectionLocations)
        {
            errs() << "Injection Location: ";
            IL->print(errs());
            errs() << "\n";
        }

        errs() << "Total Inlines: " << DI->totalInlines << "\n";
        errs() << "Total Failed Inlines: " << DI->numFailedInlines << "\n";

        DI->initNumCallsToYield = DI->InitCallsToYield.size();
        errs() << "Initial Number of Calls To Yield: " << DI->initNumCallsToYield << "\n";

        if (DI->totalInlines == 0)
        {
            errs() << "All initial calls to yield:\n";
            for (auto call : DI->InitCallsToYield)
            {
                errs() << "Call: ";
                call->print(errs());
                errs() << "\n";
            }
        }
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

