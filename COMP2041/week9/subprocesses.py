import subprocess
import re

url = f"http://unsw.edu.au"

proc = subprocess.run(['curl', '--location', '--silent', url], capture_output=True, text=True)
html = proc.stdout

# print(html)

# This does not work, loops by characters not lines
# for row in html:
#     print(row)

matches = re.findall(r"<span.*>.*</span>", html)
for row in matches:
    print(row)
