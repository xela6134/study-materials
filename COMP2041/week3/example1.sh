#!/bin/dash

# Features used:
# 
# - test
# - if / elif / else
# - -eq / =
# - echo

if [ "$1" = "woof" ]; then
    echo "dog"
elif [ "$1" = "meow" ]; then
    echo "cat"
else
    echo "unknown animal"
fi

if [ "$2" -lt 10 ]; then
    echo "small number"
elif [ "$2" -ge 10 ] && [ "$2" -lt 100 ]; then
    echo "moderate number"
else
    echo "big number"
fi
