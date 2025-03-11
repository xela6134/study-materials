#!/bin/dash

echo -n "Enter a file: "
read file

# What if a file does not exist?
if ! [ -f "$file" ]
then
    echo "File does not exist"
    exit 1
fi

lines=0

# (Will be super useful when doing assignments)
# Reads a file line by line
while IFS= read -r line
do
    echo "$line"
    lines="$(($lines+1))"
done < "$file"

echo "$lines lines for file $file"
