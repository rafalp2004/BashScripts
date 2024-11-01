#!/bin/bash

K=$1
P=$2

for file in $K/*; do
    if [ ! -s "$file" ]; then
        echo "$file" >> "$P"
        rm "$file"
    fi
done;
