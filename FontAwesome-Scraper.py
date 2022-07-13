import requests
from bs4 import BeautifulSoup

icons = requests.get("https://fontawesome.com/v4/icons/")

soup_icons = BeautifulSoup(icons.content, "html.parser")

icon_name = []

icon_unicode = []

for div in soup_icons.find_all('div', class_="fa-hover col-md-3 col-sm-4"):
    url = div.find('a').get('href').replace("../", "")

    icon = requests.get("https://fontawesome.com/v4/" + url)
    soup_icon = BeautifulSoup(icon.content, "html.parser")
    unicode = soup_icon.find('span', class_="upper")

    icon_name.append(url.replace("icon/", ""))
    icon_unicode.append(unicode.text)

print(icon_name)

print(icon_unicode)

