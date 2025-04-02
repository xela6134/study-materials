#!/usr/bin/env python3

import re

# Much more flags & other features. 
# Check https://docs.python.org/3/library/re.html

# re.search and re.match

# Example for re.search
text = "my life is cooked"
pattern = "my"
match = re.search(pattern, text)
if match:
    print("Found", match.group(), "at position", match.start())
else:
    print("No match found")

# Example for re.match
text = "life is cooked"
pattern = "life"
match = re.match(pattern, text)
if match:
    print("Found", match.group(), "at position", match.start())
else:
    print("No match found")

# Example where re.match fails but re.search works
text = "my life is cooked"
pattern = "life"

match = re.match(pattern, text)
if match:
    print("Found", match.group(), "at position", match.start())
else:
    print("No match found")

match = re.search(pattern, text)
if match:
    print("Found", match.group(), "at position", match.start(), "and ends in", match.end())
else:
    print("No match found")
