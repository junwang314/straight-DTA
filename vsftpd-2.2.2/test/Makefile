TARGET=vsftpd
DIR=../
SRC=$(DIR)/$(TARGET)
NEWSRC=$(DIR)/new$(TARGET)
INIT=../../straightDFA/init
LOG=../../straightDFA/log
INLINELOG=../../straightDFA/inlinelog
all:$(TARGET)

$(TARGET):$(TARGET).s
	gcc -g -pthread $^ -lcrypt -o $@

$(TARGET).s:$(TARGET).bc
	opt -load /home/jun/llvm-3.x/build/Release+Debug+Asserts/lib/LLVMHello.so -inline< $^ > inline.bc
	llc inline.bc -o $@

$(TARGET).bc:$(NEWSRC).bc $(INIT).bc $(INLINELOG).bc
	llvm-link $^ -o $@

$(INIT).bc:$(INIT).c
	clang -g -c -emit-llvm $^ -o $@

$(INLINELOG).bc:$(LOG).c
	clang -g -c -emit-llvm $^ -o $(LOG).bc
	opt -load /home/jun/llvm-3.x/build/Release+Debug+Asserts/lib/LLVMHello.so -inline-log < $(LOG).bc > $@

$(NEWSRC).bc:$(SRC).bc
	opt -load /home/jun/llvm-3.x/build/Release+Debug+Asserts/lib/LLVMHello.so -inline -inst < $^ > $@

clean:$(SRC).bc $(INIT).c $(LOG).c
	rm $(TARGET) $(TARGET).s $(TARGET).bc
	touch $^

run:$(TARGET)
	sudo service vsftpd stop
	sleep 1
	sudo auditctl -D
	sudo auditctl -b 8192
	sleep 1
	sudo auditctl -a exit,always -F arch=b64 -S open -S socket -S bind -S connect -S accept -S kill -S close
	sleep 1
	sudo auditctl -l
	sleep 1
	sudo strace -f -o vsftpd.strace ./vsftpd
	sleep 1
	sudo auditctl -D

view:$(TARGET).bc
	llvm-dis $^ -o $(TARGET).ll

reco:$(TARGET).bc
	opt -load /home/jun/llvm-3.x/build/Release+Debug+Asserts/lib/LLVMHello.so -reco < $^

verbose:$(TARGET).bc
	opt -load /home/jun/llvm-3.x/build/Release+Debug+Asserts/lib/LLVMHello.so -reco -debug-only=verbose < $^ >make.ll 2>&1; vim make.ll
