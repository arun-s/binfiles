#!/bin/bash

BUILD_ROOT=$1

if [ -d $BUILD_ROOT ]; then
    pushd $BUILD_ROOT
    find $BUILD_ROOT -path ./build -prune -o -name "*.[ch]" -print > cscope.files
    find $BUILD_ROOT -path ./build -prune -o -name "*.cpp" -print >> cscope.files
    find $BUILD_ROOT -path ./build -prune -o -name "*.hpp" -print >> cscope.files
    cscope -bqUk
    ctags -e -L cscope.files
    popd
else
    echo "directory does not exist, exiting..."
    return -1
fi
