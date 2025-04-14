import requests
import bs4

url = f"http://unsw.edu.au"

soup = bs4.BeautifulSoup(requests.get(url).text, 'html5lib')

courses = []

for tag in soup.find_all('a'):
    print(f"Text: {tag.text.strip()}, | Link: {tag.get('href')}, | All attributes: {tag.attrs}")
