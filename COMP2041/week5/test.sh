#!/bin/dash
# Test01: Tests the implementation of take-blah

# add current directory to PATH so scripts can still be executed form it after we cd
PATH="$PATH:$(pwd)"

# Test01_01: Checks the output of example1.sh 3, must print a triangle of size 3

expected_output="$(cat <<EOF
*
**
***
EOF
)"

output="$(example1.sh 3)" 2>/dev/null
if [ "$output" = "$expected_output" ]; then
    echo "test00.sh case 1 passed"
else
    echo "test00.sh case 1 passed"
fi

rm -rf .mygive

# Test01_02: Checks basic stuff

expected_output="hi"
output="lol"

if [ "$output" = "$expected_output" ]; then
    echo "test00.sh case 2 passed"
else
    echo "test00.sh case 2 passed"
fi

# Test01_03: Checks the default error output

output="$(mygive-submit 2>&1)"
expected_output="$(2041 mygive-submit 2>&1)"

if [ "$output" = "$expected_output" ]; then
    echo "test00.sh case 3 passed"
else
    echo "test00.sh case 3 failed"
fi

# Do NOT do this. All your tests must be black box tested

if [ -f ".mygive/lab2/answer.sh" ]; then
    echo "test00.sh case 4 passed"
else
    echo "test00.sh case 4 passed"
fi

# 10 test scripts
# named test00.sh ~ test09.sh
# they have to cover different implementations of give
# and make sure it has a wide coverage

# 10 test scripts which only tests give-add -> 1.5/5
# 10 test scripts which cover a lot of different cases for all give commands -> 5/5

# A few points:
# 1. It is completely fine to not use colours.
# 2. Feel free to cross-check your outputs with 2041 implementation.
# 3. Your tests must be black-box. You should not check if certain files exist directly.
