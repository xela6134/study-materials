#!/bin/dash

count=-10

# Features used:
# 
# - while
# - Arithmetic operations

while [ "$count" -le 5 ]; do
    echo "Current count: $count"
    count="$(($count + 1))"
done

echo "Loop finished"
