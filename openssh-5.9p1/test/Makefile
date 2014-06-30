TARGET=sshd
DIR=../
SRC=$(DIR)/$(TARGET)
NEWSRC=$(DIR)/new$(TARGET)
INIT=../../straightDFA/init
LOG=../../straightDFA/log

all:$(TARGET)

$(TARGET):$(TARGET).s
	gcc -g -pthread $^ -o $@ -L.. -L../openbsd-compat/  -fstack-protector-all -lssh -lopenbsd-compat  -lcrypto -ldl -lutil -lz -lnsl  -lcrypt -lresolv 
$(TARGET).s:$(TARGET).bc
	opt -load /home/jun/llvm-3.x/build/Debug+Asserts/lib/LLVMHello.so -inline-log -inline< $^ > inline.bc
	llc inline.bc -o $@

$(TARGET).bc:$(NEWSRC).bc $(INIT).bc $(LOG).bc
	llvm-link $^ -o $@

$(INIT).bc:$(INIT).c
	clang -g -c -emit-llvm $^ -o $@

$(LOG).bc:$(LOG).c
	clang -g -c -emit-llvm $^ -o $@

$(NEWSRC).bc:$(SRC).bc
	opt -load /home/jun/llvm-3.x/build/Debug+Asserts/lib/LLVMHello.so -inline -inst < $^ > $@

clean:$(SRC).bc $(INIT).c $(LOG).c
	rm $(TARGET) $(TARGET).s $(TARGET).bc
	touch $^

run:$(TARGET)
	sudo ./sshd -D	

view:$(TARGET).bc
	llvm-dis $^ -o $(TARGET).ll

reco:$(TARGET).bc
	opt -load /home/jun/llvm-3.x/build/Debug+Asserts/lib/LLVMHello.so -reco < $^

verbose:$(TARGET).bc
	opt -load /home/jun/llvm-3.x/build/Debug+Asserts/lib/LLVMHello.so -reco -debug-only=verbose < $^ >make.ll 2>&1; vim make.ll
