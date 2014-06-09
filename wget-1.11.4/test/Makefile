TARGET=wget
ORIGIN=wget.orig
DIR=../src
SRC=$(DIR)/$(TARGET)
NEWSRC=$(DIR)/new$(TARGET)
INIT=../../straightDFA/init
LOG=../../straightDFA/log

all:$(TARGET) $(ORIGIN)

$(TARGET):$(TARGET).s
	gcc -g -pthread $^ -lrt -o $@

$(TARGET).s:$(TARGET).bc
	opt -load /home/jun/llvm-3.x/build/Release+Debug+Asserts/lib/LLVMHello.so -inline-log -inline< $^ > inline.bc
	llc inline.bc -o $@

$(TARGET).bc:$(NEWSRC).bc $(INIT).bc $(LOG).bc
	llvm-link $^ -o $@

$(INIT).bc:$(INIT).c $(LOG).h
	clang -g -c -emit-llvm $< -o $@

$(LOG).bc:$(LOG).c $(LOG).h
	clang -g -c -emit-llvm $< -o $@

$(NEWSRC).bc:$(SRC).bc
	opt -load /home/jun/llvm-3.x/build/Release+Debug+Asserts/lib/LLVMHello.so -inst < $^ > $@

$(ORIGIN):$(SRC).bc
	llc $^ -o orig.s
	gcc -g -pthread orig.s -lrt -o $@

clean:$(SRC).bc $(INIT).c $(LOG).c
	rm $(TARGET) $(TARGET).s $(TARGET).bc
	touch $^

run:$(TARGET)
	./$(TARGET) www.google.com www.bing.com www.psu.com	

view:$(TARGET).bc
	llvm-dis $^ -o $(TARGET).ll

reco:$(TARGET).bc
	opt -load /home/jun/llvm-3.x/build/Release+Debug+Asserts/lib/LLVMHello.so -reco < $^
