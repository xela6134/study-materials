#!/usr/bin/env python3
import sys

all_alphabets = []
not_all_alphabets = []

for filename in sys.argv[1:]:
    line_count = 0
    with open(filename, 'r') as file:
        chars = set()
        for line in file:
            line = line.lower()
            for char in line:
                if 'a' <= char <= 'z':
                    chars.add(char)
        
        if len(chars) == 26:
            all_alphabets.append(file.name)
        else:
            not_all_alphabets.append(file.name)

result1 = "Contains all alphabets: "
for file in all_alphabets:
    result1 += file
    result1 += " "

result2 = "Doesn't contain all alphabets: "
for file in not_all_alphabets:
    result2 += file
    result2 += " "

print(result1)
print(result2)
