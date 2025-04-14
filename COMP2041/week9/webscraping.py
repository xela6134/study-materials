import requests
import bs4
import sys
import re

url = f"http://unsw.edu.au"

soup = bs4.BeautifulSoup(requests.get(url).text, 'html5lib')

courses = []

for tag in soup.find_all('span'):
    code = tag.get('href', '')
    name = tag.text
    if re.fullmatch(r'[A-Z]{4}[0-9]{4}\.html', code) and code[:-5] != name:
        courses.append((code[:-5], name))

for code, name in sorted(set(courses)):
    print(f"{code} {name}")
