#include <vector>
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/ADT/SparseBitVector.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Constants.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/CallGraph.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/Transforms/Utils/Cloning.h"

using namespace llvm;
using namespace std;

#define MARKER "p6pbbUlpLo0BL1bM2k8K"
#define YIELD_CALL "nk_fiber_yield"

/* *** Basic pass to insert the "nk_fiber_yield" function call every 50 lines of code. *** 
 * 
 * Technical issues:
 * - Injecting function that doesn't exist in current module (i.e. yield)
 *   Ideas --- getOrCreateFunction will create a shell, stil could have an empty body
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

Function *YIELD = NULL;
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
        // Look for nk_fiber_yield and the marker name, set the function vars if they exist

        // ---- FIX ----

        // Generic yield call (per Cuevas)
        /*
        auto yield = M.getFunction(YIELD_CALL);
        if (yield != NULL)
            YIELD = yield;
        */

        // ---- FIX ----

        // Right now --- Simone's 323 code for debugging
        auto yield = M.getFunction("CAT_new");
        if (yield != NULL)
            YIELD = yield;

        auto marker = M.getFunction(MARKER);
        if (marker != NULL)
            MARKER_FUNC = marker;

        return false;
    }

    bool runOnModule(Module &M) override
    {
        // If nk_fiber_yield is not present, terminate pass
        if (YIELD = NULL)
            return false;

        // If the marker function exists, terminate pass
        if (MARKER_FUNC != NULL)
            return false;

        // to print later
        DI = new debugInfo();

        // Debugging info
        int64_t lines = 0;
        for (auto &F : M)
        {
            for (auto &B : F)
                lines += B.size();
        }
        DI->totalLines = lines;

        // declare marker function
        LLVMContext &Context = M.getContext();
        IRBuilder<> builder(Context);
        FunctionType *FT = FunctionType::get(builder.getInt32Ty(), false);
        Function *marker_func = Function::Create(FT, Function::ExternalLinkage, MARKER, M);
        DI->marker_exists = true;

        // ANALYZING --- analye the module, highlight blocks where injecting a yield may not be a good idea
        // TODO: analyzeModule(DI, M);

        // INLINING --- optional at the moment
        CallGraph &CG = getAnalysis<CallGraphWrapperPass>().getCallGraph();
        /*
        for (auto &F : M)
        {
            if (F.empty())
                continue;
            inlineF(F, CG);
        }
        */

        // INJECTING --- insert function call

        // ---- FIX ----
        // Having to recreate nk_fiber_yield becuase it doesn't exist in the current module
        Function *yield_dummy_func = Function::Create(FT, Function::ExternalLinkage, YIELD_CALL, M);
        injectYield(DI, M);

        // Cleanup
        printDebugInfo(DI);
        free(DI);

        return false;
    }

    /*
    bool onFunction(Function &F) 
    {
        return false;
    }
    */

    void injectYield(debugInfo *DI, Module &M)
    {
        int64_t count = 0;
        vector<Instruction *> InstructionsToInject;

        // ---- FIX ---- extra code added to find the dummy nk_fiber_yield function
        Function *yield_func_dummy = NULL;

        auto dummy = M.getFunction(YIELD_CALL);
        if (dummy != NULL)
            yield_func_dummy = dummy;

        if (yield_func_dummy == NULL)
            return;

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
                        InstructionsToInject.push_back(&I);
                        count = 0;
                    }
                }
            }
        }

        // Inject instructions
        for (auto i : InstructionsToInject)
        {
            // inject yield call
            IRBuilder<> builder{i};
            CallInst *yieldCall = builder.CreateCall(yield_func_dummy, None);
            // CallInst *yieldCall = builder.CreateCall(yield_func, None);

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

