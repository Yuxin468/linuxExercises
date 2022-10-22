#!/bin/bash

if [ $# -ne 2]; then
    echo "usage: $0 <dir> <n>" 1>&2
    exit 0
fi
cd "$1"
file=$(find . -type f -size +$2c)
for i in $file; do
    rm $i
done

