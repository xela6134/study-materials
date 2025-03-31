#!/usr/bin/env python3

import re

# re.fullmatch and re.sub

text = "12345"
pattern = r"[0-9]+"
match = re.fullmatch(pattern, text)
if match:
    print("full match")
else:
    print("nope")

text = "12345abc"
match = re.fullmatch(pattern, text)
if match:
    print("full match")
else:
    print("nope")

# Example for re.sub
text = "The rain in Spain"
pattern = "rain"
replacement = "snow"
result = re.sub(pattern, replacement, text)
print(result)

# Example for re.sub with a count parameter
text = "one one two two four four four four"
pattern = "four"
replacement = "three"
result = re.sub(pattern, replacement, text, count=2)
print(result)
