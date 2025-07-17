#!/usr/bin/env python3

# Slicing Iterables

s = "Hello, World!"

# [start]
i = 7
print(f"s[{i}]: {s[i]}")

# [start:stop]
i = 0
j = 5
print(f"s[{i}:{j}]: {s[i:j]}")

# [start:stop:step]
i = 0
j = len(s)
k = 2
print(f"s[{i}:{j}:{k}]: {s[i:j:k]}")

# String reversing
# start and stop is None
# Everything else you go back by 1
reversed_s = s[::-1]
print(f"Reversed string: {reversed_s}")
