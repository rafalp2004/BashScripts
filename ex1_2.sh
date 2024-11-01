#!/bin/bash

K1=$1
K2=$2

if [ ! -d "$K1" ]; then
    echo "Directory $K1 doesnt exist";
fi

if [ ! -d "$K2" ]; then
    echo "Directory $K2 doesnt exist";
fi

for file in $K1/*; do
    filename=$(basename "$file")
    if [[ -w "$file" && ! -f "$K2/$filename" ]]; then
        cp "$file" "$K2"/
    fi
done
