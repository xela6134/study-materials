#!/bin/dash

# local keyword ensures that result inside multiply() is local to the function
# doesn't to override global variables
multiply() {
    local result="$(($1 * $2))"
    echo "The product is: $result"
}

result="$((1 + 3))"

echo "Result is $result here"

multiply 4 7

# The variable `result` is scoped locally!
echo "Result is $result here again"
