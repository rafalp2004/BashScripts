#!/bin/bash

K=$1
if [ ! -d "$K" ]; then
    echo "Directory doesn't exist";
fi

count=0
for file in $K/*; do
    if [ -s "$file" ]; then
        ((count++))
    fi
done;
echo $count;
