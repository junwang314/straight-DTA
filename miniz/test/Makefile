TARGET=example3
DIR=..
SRC=$(DIR)/$(TARGET)
NEWSRC=$(DIR)/new$(TARGET)
INIT=../../straightDFA/init
LOG=../../straightDFA/log

all:$(TARGET)

$(TARGET):$(TARGET).s
	gcc -g -pthread $^ -o $@

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

$(SRC).bc:$(SRC).c
	clang -g -c -emit-llvm $^ -o $@

clean:$(SRC).bc $(INIT).c $(LOG).c
	rm $(TARGET) $(TARGET).s $(TARGET).bc
	touch $^

run:$(TARGET)
	./$(TARGET) c src.txt dst.txt	

view:$(TARGET).bc
	llvm-dis $^ -o $(TARGET).ll

reco:$(TARGET).bc
	opt -load /home/jun/llvm-3.x/build/Release+Debug+Asserts/lib/LLVMHello.so -reco < $^
