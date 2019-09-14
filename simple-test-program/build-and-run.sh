#!/usr/bin/env bash

source ../gtest_dependency.sh

exe="./a.out"
[ -f "$exe" ] && rm "$exe"

clang++ \
    -I $GTEST_SRCDIR \
    -I $GTEST_SRCDIR/include \
    -I $GMOCK_SRCDIR \
    -I $GMOCK_SRCDIR/include \
    $GTEST_SRCDIR/src/gtest-all.cc \
    $GMOCK_SRCDIR/src/gmock-all.cc \
    test.cc \
    && "$exe"
