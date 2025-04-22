#!/usr/bin/env python3
import sys

for filename in sys.argv[1:]:
    line_count = 0
    with open(filename, 'r') as file:
        for line in file:
            line_count += 1
    
    if line_count == 1:
        print(f"{filename}: {line_count} line")
    else:
        print(f"{filename}: {line_count} lines")
