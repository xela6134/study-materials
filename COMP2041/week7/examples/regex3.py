#!/usr/bin/env python3

import re

# Finding 'ain'
text = "The rain in Spain stays mainly in the plain"
pattern = "ain"
matches = re.findall(pattern, text)
print(matches)

# Finding numbers
text = "123abc456def789ghi"
pattern = r"\d+"
matches = re.findall(pattern, text)
print(matches)

# Splitting between ', '
text = "one, two, three, four"
pattern = ", "
split_text = re.split(pattern, text)
print(split_text)

# Splitting between numbers, but also capturing the delimiters
text = "one1two2three3four"
pattern = r"(\d)"
split_text = re.split(pattern, text)
print(split_text)

# Flags
text = """
Hello World
HELLO WORLD
hello world
"""

# re.IGNORECASE flag example
pattern = "hello world"
matches = re.findall(pattern, text, re.IGNORECASE)
print("re.IGNORECASE:", matches)

# Much more flags & other features. 
# Check https://docs.python.org/3/library/re.html

hi = r'\d+(\.\d+)?'
