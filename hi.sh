#!/bin/dash

# echo "Current date is: $(date)"
# echo "HOME variable is: $HOME"

a=4

echo "variable a is $a"

# we use the dollar sign only when reading from variables

echo "3 + 3 is $((3+3))"
echo "a + a is $((a+a))"
echo "a + a is $(($a+$a))"
