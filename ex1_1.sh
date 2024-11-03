#!/bin/bash
K=$1;
if [ ! -d "$K" ]; then
    echo "Dictionary doesn't exist";
fi;
countFiles=0;
countDictionaries=0;
for file in $K/*; do
    if [ ! -s "$file" ]; then
        ((countFiles++));
    fi;
done;

for file in $K/*; do
    if [ -d "$file" ]; then
        ((countDictionaries++));
    fi;
done;

echo "Files $countFiles";
echo "Folders $countDictionaries";
