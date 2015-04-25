#include "gtest/gtest.h"
//for ET-analyzer
#include "/home/jun/llvm-3.x/llvm/lib/Transforms/Hello/INPUT_InstTrace.h"
//for load module from file
#include </home/jun/llvm-3.x/llvm/include/llvm/IR/Module.h>
#include </home/jun/llvm-3.x/llvm/include/llvm/IRReader/IRReader.h>
#include </home/jun/llvm-3.x/llvm/include/llvm/IR/LLVMContext.h>
#include </home/jun/llvm-3.x/llvm/include/llvm/Support/SourceMgr.h>

#include<vector>
#include<algorithm>

using namespace std;
using namespace llvm;

//declare test fixture
class InstTraceFix: public testing::Test{
  protected:   
    virtual void SetUp(){
			string irfile("/home/jun/straight-DTA/pserv-3.3/test/pserv.bc");
			m1=ParseIRFile(irfile.c_str(), error1, context1);
		}
    LLVMContext context1;
		SMDiagnostic error1;
		Module * m1;
};

TEST_F(InstTraceFix, ForkQueue){
  EXPECT_TRUE(true);
}

int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
