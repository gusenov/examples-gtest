#!/usr/bin/env bash

export PATH="/usr/local/opt/llvm/bin:$PATH"

source ../gtest_dependency.sh

exe="./a.out"
[ -f "$exe" ] && rm "$exe"

function OutOfTheBox() {
    clang++ -fsanitize=leak \
        -I $GTEST_SRCDIR \
        -I $GTEST_SRCDIR/include \
        -I $GMOCK_SRCDIR \
        -I $GMOCK_SRCDIR/include \
        $GTEST_SRCDIR/src/gtest-all.cc \
        $GMOCK_SRCDIR/src/gmock-all.cc \
        memLeak.cc -lpthread \
        && "$exe"
}

OutOfTheBox
