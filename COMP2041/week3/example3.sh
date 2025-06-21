#!/bin/dash

# Features used:
# 
# - Exit codes
# - Redirect input
# - Globbing

cd "$1" 2>/dev/null

# right -> stdout, status code 0
# wrong -> stderr, status code 1 (or some other thing like 2 127 etc)

if [ "$?" != 0 ]; then
    echo "Something is wrong..."
else
    echo *.*
fi
