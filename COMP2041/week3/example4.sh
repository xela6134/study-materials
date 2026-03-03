#!/bin/dash

count=1

# Features used:
# 
# - while
# - Arithmetic operations

# Loop until count is greater than 5
while [ "$count" -le 5 ]
do
    echo "Current count: $count"
    count="$(($count + 1))"
done

echo "Loop finished"
