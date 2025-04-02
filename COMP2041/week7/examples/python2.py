#!/usr/bin/env python3

multiline_string = """hello
hi
really
no not really
byee"""

file = open('./example.txt')

# Using a loop to read each line
for line in file:
    print(line, end='') # equivalent to echo -n

# You can also multiply strings
print('-+' * 15)

# This doesn't work, 'for' here just splits character by character by default
for line in multiline_string:
    print(line)

print("-+" * 15)

# This works
line_splitted = multiline_string.split('\n')
for line in line_splitted:
    print(line)

# Another way of reading a file and splitting a line
with open('data.txt', 'r') as readfile:
    for line in readfile:
        datas = line.split('|')
        for data in datas:
            print(data.strip(), end=', ')
        print('')
