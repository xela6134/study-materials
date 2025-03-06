#!/bin/dash

# Features used:
# 
# - Exit codes
# - Redirect input
# - Globbing

cd "$1" 2>/dev/null

if [ "$?" != 0 ]; then
    echo "Something is wrong..."
else
    echo *.*
fi
