#!/bin/dash
# This file sorts each of the files
# according to its size
# Made by z5555555 blah

files=$(ls -1)

small=""
medium=""
large=""

# Loop to figure out the sizes of files
for file in "$files"
do
    lines=$(wc -l < "$file")
    if [ "$lines" -lt 10 ]
    then
        a="$a $file"
    elif [ "$lines" -ge 10 ] && [ "$lines" -lt 100 ]
    then
        b="$b $file"
    else
        c="$c $file"
    fi
done

echo "Small files:$a"
echo "Medium-sized files:$b"
echo "Large files:$c"

# syntax
# newlines
# spaces
# tabs
# should be consistent!

# header comments
# normal comments
# descriptive variable names
