#!/bin/dash
# This file prints the names of the files in the current directory splitting them into three categories:

# small if the file contains less than 10 lines
# medium-sized if the file contains between 10 and 100 lines
# large if the file contains 100 or more lines
# Made by z5555555 bob

files=$(ls -1)

small_files=""
medium_files=""
large_files=""

# loop through files and check their file sizes
for file in $files; do
    lines=$(wc -l < "$file")

    if [ "$lines" -lt 10 ]
    then
        small_files="$small_files $file"
    elif [ "$lines" -ge 10 ] && [ "$lines" -lt 100 ]
    then
        medium_files="$medium_files $file"
    else
        large_files="$large_files $file"
    fi
done

echo "Small files:$small_files"
echo "Medium-sized files:$medium_files"
echo "Large files:$large_files"

# syntax
# newlines
# spaces
# tabs
# should be consistent!

# header comments
# normal comments
# descriptive variable names
