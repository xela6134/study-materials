#!/bin/dash

# Reading two numbers
echo -n "Enter two numbers: "

read num1 num2

if [ "$num1" -eq "$num1" ] 2>/dev/null && [ "$num2" -eq "$num2" ] 2>/dev/null
then
    echo "$((num1+num2))"
else
    echo "no"
fi