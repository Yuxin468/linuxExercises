#!/bin/bash
dir=$1
n=$2
if [ $# -ne 2]; then
    echo "usage: $0 <dir> <n>" 1>&2
    exit 0
fi
for i in $(find $dir -type f -size $n); do
    rm "$i"
    done
