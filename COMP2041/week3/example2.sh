#!/bin/dash

# Features used:
# 
# - for
# - $@, $#
# - arithmetics

increment=0

echo "We have $# command line arguments here"

for var in "$@"; do
    increment="$(($increment+2))"
    echo "argument $increment is $var"
done
