#!/bin/dash

# Parameters in Functions
add() {
    result="$(($1 + $2))"
    return "$result"
}

greetings() {
    echo "Hello $1 and $2!"
}

greet() {
    return "Hello $1 and $2!"
}

# This works (Returns number)
add 1 3
echo "$?"

greetings "Bob" "Steve"

# This doesn't: We need to return a number from 0 - 255
greet "Bob" "Steve"
echo "$?"
