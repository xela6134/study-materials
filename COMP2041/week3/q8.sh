#!/bin/dash

for file in *.c
do
    echo "$file includes:"
    grep -E '^#include' "$file" | sed -E 's/^#include *[<"](.*)[">].*/    \1/p'
done
