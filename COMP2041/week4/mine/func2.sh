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
var1="$?"

add 2 4
var2="$?"

add "$var1" "$var2"
var3="$?"

echo "var1 is $var1"
echo "var2 is $var2"
echo "var3 is $var3"

greetings "Bob" "Steve"

# This doesn't: We need to return a number from 0 - 255
greet "Bob" "Steve"
echo "$?"
