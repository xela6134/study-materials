import re

# Another way of reading a file and splitting a line
with open('data.txt', 'r') as readfile:
    for line in readfile:
        numbers = re.findall(r'\d+', line)
        print(f"{line.strip()}, {numbers}")
