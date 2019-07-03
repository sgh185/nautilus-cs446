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
#include "llvm/Transforms/Utils/Cloning.h"

using namespace llvm;
using namespace std;

/* *** Basic pass to insert a function call every 50 lines of code. *** 
 * 
 * Technical issues:
 * - Injecting function that doesn't exist in current module (i.e. yield)
 * - 
 * 
 */

const Function *YIELD = NULL; // NOTE: the yield function itself is unlikely to be part of executing code
                              // Injecting yield from another source file (i.e. not the module) --- ???

namespace
{
// Useful to print out information later.
struct debugInfo
{
    // Simple stats right now

    // Code injection info:
    int64_t totalLines;
    int64_t totalInjections;
    // int64_t failedInjections // May not need
};

struct CIY : public ModulePass
{
    static char ID;
    debugInfo *DI;

    CIY() : ModulePass(ID) {}

    bool doInitialization(Module &M) override
    {
        auto func = M.getFunction("nk_fiber_yield"); // Seems to be the yield call per Cuevas' edits on GitHub
        if (func != NULL)
            YIELD = func;

        return false;
    }

    bool runOnModule(Module &M) override
    {
        if (YIELD = NULL)
            return false;

        DI = new debugInfo();

        // Debugging info
        int64_t lines = 0;
        for (auto &F : M)
        {
            for (auto &B : F)
                lines += B.size();
        }
        DI->totalLines = lines;

        // ANALYZING --- analye the module, highlight blocks where injecting a yield may not be a good idea
        // analyzeModule(DI, M); --- not written yet

        CallGraph &CG = getAnalysis<CallGraphWrapperPass>().getCallGraph();

        // INLINING --- optional at the moment
        /*
        for (auto &F : M)
        {
            if (F.empty())
                continue;
            inlineF(F, CG);
        }
        */

        // INJECTING --- insert function call
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

        for (auto &F : M)
        {
            for (auto &B : F)
            {
                for (auto &I : B)
                {
                    count++;
                    if (count == 50)
                    {
                        // inject yield call
                        IRBuilder<> builder{I};
                        CallInst *yield = builder.CreateCall(YIELD, NULL); // no arguments
                        //CallInst *yield = CallInst::Create(YIELD, NULL, "nk_fiber_yield");

                        count = 0;
                        DI->totalInjections++; // debugging info
                    }
                }
            }
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
        if(!_PassMaker){ PM.add(_PassMaker = new CIY()); } })

