#!/bin/dash
# This program prints out a right angle triangle
# when the size is given with its first command line argument
# Made by z5555555 bob

SIZE="$1"
i=1

# main loop to print out triangle
while [ "$i" -le "$SIZE" ]; do
    j=1

    while [ "$j" -le "$i" ]
    do
        echo -n "*"
        j="$((j + 1))"
    done

    echo ""
    i="$((i + 1))"
done

# 1. 'consistency'
# - newlines between chunks of code
# - using same syntax throughout code (e.g. while loops syntax)
# - correct consistent tab indentation

# 2. 'descriptiveness'
# - better variable names
# - comments explaining chunks of code
# - header comments
