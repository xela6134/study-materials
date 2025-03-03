#!/bin/dash

# Part 1: Write
echo "Line 1\nLine 2\nLine 3" > infile
echo "Reading from infile:"
cat < infile

# Part 2: Append
echo "hello" > infile
echo "world" >> infile

# Part 3: Silence stdout
ls junk # >/dev/null 
ls asdf # >/dev/null

# Part 4: Silence stderr
ls junk # 2>/dev/null 
ls asdf # 2>/dev/null
