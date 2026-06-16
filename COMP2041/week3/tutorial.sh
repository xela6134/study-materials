#!/bin/dash

# ALWAYS FOLLOW THESE STEPS
# 1. Add #!/bin/dash at the top of the file
# 2. Before running a program, run `chmod +x yourfilename.sh` before running it (permission issue)

echo "hello world"
echo "hello                            world"
echo hello                            world

echo "$HOME"

# when assigning a variable, dont use dollar sign
# when fetching variable value, use dollar sign
echo "x was: $x"
x=3
echo "x is now: $x"

# running commands: $() - dollar sign with one bracket set
echo "date is: $(date)"
echo "my name is: $(whoami)"

# single quotes: literal string
# double quotes: not a literal string (can use commands, variables, whatever)
# ALWAYS good to use double quotes for dollar-sign related stuff
# because variables might expand really randomly when stuff gets kinda complicated
# and ur gonna have a very hard time debugging through a lot of things

######################
# simple arithmetics #
######################

echo "3 + 3 is $((3+3))"
y=4
echo "x * y is $((x*y))"

# BUILT-IN VARIABLES #

echo "filename: $0, first: $1, second: $2, third: $3"
echo "we have $# command line arguments"

# status codes
# usually 0 or non-0
cd askdhaskdhaskdhaklsdh 2>/dev/null     # silenced the error output, redirected the output into /dev/null (black hole)
echo "hi this is nonexistent" >/dev/null # silenced regular output
echo "Status code was $?"

# 90% of the time all u guys are gonna be using is *
# usually, we try to loop through all the files inside a specific directory
# in the scope of this course
# e.g.
# hello.*   -> hello files
# *.py      -> all python files
# *         -> everything
# NEVER put them in double quotes, unlike any of the $ stuff that we have been doing above
echo "Looping through files!"
for filename in junk/hello.*; do
    echo "filename: $filename"
done

var=3
# var="hello"

echo "Checking if a variable is a number or not"
if [ "$var" -eq "$var" ] 2>/dev/null; then
    echo "is an integer"
else
    echo "is not an integer, likely a string"
fi

