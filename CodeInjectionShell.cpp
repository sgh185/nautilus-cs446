#include <vector>
#include <set>
#include <unordered_map>
#include <map>
#include <queue>
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
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
 * NOTE: 
 * 
 */

const Function *YIELD = NULL; // NOTE: the yield function itself is unlikely to be part of executing code
                              // Injecting yield from another source file (i.e. not the module) --- ???

namespace
{
// Useful to print out later.
struct debugInfo
{
    // Code injection info
    int64_t totalLines;
    int64_t totalInjections;
    int64_t failedInjections = 0; // May not need

    // Inlining info
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

        // ----------------------------------------------------------------
        // Debugging info
        int64_t lines = 0;
        for (auto &F : M)
        {
            for (auto &B : F)
                lines += B.size();
        }
        DI->totalLines = lines;
        // ----------------------------------------------------------------

        // INLINING --- optional at the moment
        /*
        CallGraph &CG = getAnalysis<CallGraphWrapperPass>().getCallGraph();

        for (auto &F : M)
        {
            if (F.empty())
                continue;
            inlineF(F, CG);
        }
        */

        // insert function call

        for (auto &F : M)
        {
            for (auto &B : F)
            {
                for (auto &I : B)
                {
                                }
            }
        }

        return false;
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

    /*
    bool onFunction(Function &F) 
    {
        return false;
    }
    */

    void getAnalysisUsage(AnalysisUsage &AU) const override
    {
        AU.setPreservesAll();
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
