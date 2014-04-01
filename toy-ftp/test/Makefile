TARGET=server
DIR=../
SRC=$(DIR)/$(TARGET)
NEWSRC=$(DIR)/new$(TARGET)
INIT=../../straightDFA/init
LOG=../../straightDFA/log

all:$(TARGET)

$(TARGET):$(TARGET).s
	gcc -g -pthread $^ -lcrypt -o $@ -lstdc++

$(TARGET).s:$(TARGET).bc
	llc $^

$(TARGET).bc:$(NEWSRC).bc $(INIT).bc $(LOG).bc
	llvm-link $^ -o $@

$(INIT).bc:$(INIT).c
	clang -g -c -emit-llvm $^ -o $@

$(LOG).bc:$(LOG).c
	clang -g -c -emit-llvm $^ -o $@

$(NEWSRC).bc:$(SRC).bc
	opt -load /home/jun/llvm-3.x/build/Release+Debug+Asserts/lib/LLVMHello.so -inst < $^ > $@

clean:$(SRC).bc $(INIT).c $(LOG).c
	rm $(TARGET) $(TARGET).s $(TARGET).bc
	touch $^

run:$(TARGET)
	../client

view:$(TARGET).bc
	llvm-dis $^ -o $(TARGET).ll

reco:$(TARGET).bc
	opt -load /home/jun/llvm-3.x/build/Release+Debug+Asserts/lib/LLVMHello.so -reco < $^

verbose:$(TARGET).bc
	opt -load /home/jun/llvm-3.x/build/Release+Debug+Asserts/lib/LLVMHello.so -reco -debug-only=verbose < $^ >make.ll 2>&1; vim make.ll
