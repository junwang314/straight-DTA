#include "gtest/gtest.h"
//for ET-analyzer
#include "/home/jun/llvm-3.x/llvm/lib/Transforms/Hello/common.h"
#include "/home/jun/llvm-3.x/llvm/lib/Transforms/Hello/DEBUG_utils.h"
#include "/home/jun/llvm-3.x/llvm/lib/Transforms/Hello/INPUT_SigHandler.h"
#include "/home/jun/llvm-3.x/llvm/lib/Transforms/Hello/INPUT_GlobalData.h"
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

shared_ptr<INPUT_GlobalData> globalData;
shared_ptr<INPUT_SigHandlerSet> sigHandlerSet;
shared_ptr<DEBUG_utils> debug_utils;

//declare test fixture
class InstTraceFix: public testing::Test{
  protected:   
    virtual void SetUp(){
			string irfile("/home/jun/straight-DTA/pserv-3.3/test/pserv.bc");
			m1=ParseIRFile(irfile.c_str(), error1, context1);
		}
    LLVMContext context1;
		SMDiagnostic error1;
		Module const * m1;
};

TEST_F(InstTraceFix, ForkQueue){
	string logdir("/home/jun/straight-DTA/pserv-3.3/test");
	string cfigfile("configFile");

	debug_utils.reset(new DEBUG_utils());
	sigHandlerSet.reset(new INPUT_SigHandlerSet( (logdir+"/"+"sigHandlerFile").c_str() ));
	globalData.reset(new INPUT_GlobalData(*m1));

	INPUT_InstTrace* it=new INPUT_InstTrace( *m1, logdir, cfigfile );
	EXPECT_FALSE(it->isForkQueueEmpty());
	char* fq1=it->getForkQueueFront();
	EXPECT_TRUE(fq1!=NULL);
	string fq1s(fq1);
	EXPECT_TRUE(fq1s == "tmp.19007.full");
	it->popForkQueue();
	EXPECT_FALSE(it->isForkQueueEmpty());
	char* fq2=it->getForkQueueFront();
	EXPECT_TRUE(fq2!=NULL);
	string fq2s(fq2);
	EXPECT_TRUE(fq2s == "tmp.19010.full");
	it->popForkQueue();
	EXPECT_TRUE(it->isForkQueueEmpty());	
	
	delete it;

	debug_utils.reset((DEBUG_utils*)NULL);
	sigHandlerSet.reset((INPUT_SigHandlerSet*)NULL);
	globalData.reset((INPUT_GlobalData*)NULL);
}

bool isEntryInst(Instruction const* inst){
	if(inst==NULL)return false;
	BasicBlock const* bbl=inst->getParent();
	if(bbl==NULL)return false;
	if(&(bbl->front())!=inst)return false;
	Function const* func=bbl->getParent();
	if(func==NULL)return false;
	if(bbl!=&(func->getEntryBlock()))return false;
	return true;
}

bool verifyInstTrace(deque<Instruction const*> const instTrace){
	stack<Function const*> callstk;
	for(auto i=instTrace.begin(), i_e=instTrace.end(); i!=i_e; i++){
		Instruction const* inst=*i;
		if(isEntryInst(inst)){
			Function const* func=inst->getParent()->getParent();
			callstk.push(func);
		}else if(isa<ReturnInst>(inst)){
			if(callstk.empty()){
				cout<<"InstTrace Error: Excessive return inst!\n";
				return false;
			}else{
				Function const* tmp=callstk.top();
				if(tmp==inst->getParent()->getParent()){
					callstk.pop();
				}else{
					cout<<"InstTrace Error: call-return not match!\n";
					return false;
				}
			}
		}
		
	}
	return true;
}

TEST_F(InstTraceFix, traceBB){
	string logdir("/home/jun/straight-DTA/pserv-3.3/test");
	string cfigfile("configFile");

	debug_utils.reset(new DEBUG_utils());
	sigHandlerSet.reset(new INPUT_SigHandlerSet( (logdir+"/"+"sigHandlerFile").c_str() ));
	globalData.reset(new INPUT_GlobalData(*m1));

	INPUT_InstTrace* it=new INPUT_InstTrace( *m1, logdir, cfigfile );

	EXPECT_FALSE(it->isForkQueueEmpty());
	char const* traceFileName=it->getLogFileName();
	it->updateInstTrace(traceFileName);
	EXPECT_TRUE(it->isForkQueueEmpty());

}

TEST_F(InstTraceFix, instTrace){
	string logdir("/home/jun/straight-DTA/pserv-3.3/test");
	string cfigfile("configFile");

	debug_utils.reset(new DEBUG_utils());
	sigHandlerSet.reset(new INPUT_SigHandlerSet( (logdir+"/"+"sigHandlerFile").c_str() ));
	globalData.reset(new INPUT_GlobalData(*m1));

	INPUT_InstTrace* it=new INPUT_InstTrace( *m1, logdir, cfigfile );
	auto instTrace1=it->getTraceInstForReadOnly();
	EXPECT_TRUE(verifyInstTrace(instTrace1));
	EXPECT_FALSE(it->isForkQueueEmpty());
	char const* traceFileName=it->getLogFileName();
	it->updateInstTrace(traceFileName);
	EXPECT_TRUE(it->isForkQueueEmpty());

}


int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
