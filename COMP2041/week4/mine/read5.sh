#!/bin/dash

echo -n "Enter a file: "
read file

if [ ! -f "$file" ]; then
    echo "File not found!"
    exit 1
fi

# Reading from data.txt file
# Separating by delimeter
while IFS=',' read -r col1 col2 col3
do
    echo "Name: $col1,\t Age: $col2,\t Occupation: $col3\t"
done < "$file"
