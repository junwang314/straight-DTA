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
			string irfile_pserv("/home/jun/straight-DTA/pserv-3.3/test/pserv.bc");
			m1=ParseIRFile(irfile_pserv.c_str(), error1, context1);
      string irfile_vsftpd("/home/jun/straight-DTA/vsftpd-2.2.2/test/vsftpd.bc");
      m2=ParseIRFile(irfile_vsftpd.c_str(), error2, context2);
		}
    LLVMContext context1;
		SMDiagnostic error1;
		Module const * m1;
    LLVMContext context2;
    SMDiagnostic error2;
    Module const * m2;
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

bool isCallExit(Instruction const* inst){
	if(CallInst const* callInst=dyn_cast<CallInst>(inst)){
		Function const* func=callInst->getCalledFunction();
		if(func==NULL)return false;
		string funcName(func->getName().data());
		if(funcName=="exit"){
			return true;
		}
		else{
			return false;
		}
	}else{
		return false;
	}
}

void dumpInstTrace(deque<Instruction const*> const instTrace){
	for(auto i=instTrace.begin(), i_e=instTrace.end(); i!=i_e; i++){
		Instruction const* inst=*i;
		if(BasicBlock const* bbl=inst->getParent()){
			cerr<<bbl->getParent()->getName().data()<<"\t";
		}
		inst->dump();
	}
}

bool verifyInstTrace(deque<Instruction const*> const instTrace){
	stack<Function const*> callstk;
	for(auto i=instTrace.begin(), i_e=instTrace.end(); i!=i_e; i++){
		Instruction const* inst=*i;
		if(isEntryInst(inst)){
			Function const* func=inst->getParent()->getParent();
			callstk.push(func);
		}else if(isa<ReturnInst>(inst) || isCallExit(inst)){
			if(callstk.empty()){
				cout<<"InstTrace Error: Excessive return inst!\n";
				return false;
			}else{
				Function const* tmp=callstk.top();
				if(tmp==inst->getParent()->getParent()){
					callstk.pop();
				}else{
					cout<<"InstTrace Error: call-return not match!\n";
					cout<<"Entry function: "<<tmp->getName().data()<<"\n";
					cout<<"ReturnInst in function: "<<inst->getParent()->getParent()->getName().data()<<"\n";
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
	EXPECT_TRUE(instTrace1.size()>0);
	bool traceIsValid=verifyInstTrace(instTrace1);
	EXPECT_TRUE(traceIsValid);
	if(traceIsValid==false){
		dumpInstTrace(instTrace1);
	}
	EXPECT_FALSE(it->isForkQueueEmpty());
	char const* traceFileName=it->getLogFileName();
	it->updateInstTrace(traceFileName);
	EXPECT_TRUE(it->isForkQueueEmpty());
	auto instTrace2=it->getTraceInstForReadOnly();
	EXPECT_TRUE(instTrace2.size()>0);
	traceIsValid=verifyInstTrace(instTrace2);
	EXPECT_TRUE(traceIsValid);
	if(traceIsValid==false){
		dumpInstTrace(instTrace2);
	}
}

TEST_F(InstTraceFix, iterator){
	string logdir("/home/jun/straight-DTA/pserv-3.3/test");
	string cfigfile("configFile");

	debug_utils.reset(new DEBUG_utils());
	sigHandlerSet.reset(new INPUT_SigHandlerSet( (logdir+"/"+"sigHandlerFile").c_str() ));
	globalData.reset(new INPUT_GlobalData(*m1));

	INPUT_InstTrace* it=new INPUT_InstTrace( *m1, logdir, cfigfile );

	auto instTrace=it->getTraceInstForReadOnly();
	auto begin=it->getTraceInstBegin();
	auto end=it->getTraceInstEnd();
	long numInst1=0;
	for(auto i=begin; i!=end; i++){
		numInst1++;
	}
	EXPECT_TRUE(numInst1>0);
	for(auto i=instTrace.begin(), i_e=instTrace.end(); i!=i_e; i++){
		numInst1--;
	}
	EXPECT_TRUE(numInst1==0);
	bool traceAreSame=true;
	if(numInst1==0){
		for(auto i=instTrace.begin(), i_e=instTrace.end(); i!=i_e; i++, begin++){
			Instruction const* k1=*i;
			Instruction const* k2=*begin;
			if(k1->getOpcode()!=k2->getOpcode()){
				traceAreSame=false;
				break;
			}
		}
		EXPECT_TRUE(traceAreSame);
	}
}

int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
