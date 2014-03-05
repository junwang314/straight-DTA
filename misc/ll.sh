#!/bin/sh

clang -c -emit-llvm $1.c || exit $?
llvm-dis $1.bc -o $1.ll || exit $?
vim $1.ll || exit $?
