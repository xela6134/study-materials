#! /usr/bin/env python3

import requests
import bs4
import sys
import re

YEAR = "2024"

assert len(sys.argv) == 2, f"Usage: {sys.argv[0]} <course prefix>"
course_prefix = sys.argv[1]
assert re.fullmatch(r"[A-Z]{4}", course_prefix), f"Invalid course prefix: {course_prefix}"

url = f"http://www.timetable.unsw.edu.au/{YEAR}/{course_prefix}KENS.html"

soup = bs4.BeautifulSoup(requests.get(url).text, 'html5lib')

courses = []

for tag in soup.find_all('a'):
    code = tag.get('href', '')
    name = tag.text
    if re.fullmatch(r'[A-Z]{4}[0-9]{4}\.html', code) and code[:-5] != name:
        courses.append((code[:-5], name))


for code, name in sorted(set(courses)):
    print(f"{code} {name}")
