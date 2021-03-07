import requests
from bs4 import BeautifulSoup
import sys
import io
import base64
import pyodbc
import urllib3

sys.stdout = io.TextIOWrapper(sys.stdout.detach(), encoding = 'utf-8')
sys.stderr = io.TextIOWrapper(sys.stderr.detach(), encoding = 'utf-8')

page = requests.get('https://www.congress.gov/members?q={%22congress%22:117}&searchResultViewType=compact')
parsed = BeautifulSoup(page.content, 'html.parser')

contents = parsed.find_all('li', class_='compact')
masterList = []

for x in range(len(contents)):
    specific = contents[x].find("div", { "class" : "member-profile" }).findAll('span', class_="result-item")
    name     = contents[x].find('a').contents[0]
    state     = specific[0].span.contents[0]
    
    if specific[1].strong.contents[0] == "District:":
        district  = specific[1].span.contents[0]
        party     = specific[2].span.contents[0]
    else:
        district  = ""
        party     = specific[1].span.contents[0]

    
    if contents[x].find('img') is not None:
        pic_found = isinstance(contents[x].find('img').attrs['src'], str)
        picpath   = contents[x].find('img').attrs['src'] if pic_found else None
        piclink   = 'https://www.congress.gov'+picpath
    else:
        picpath = None
    if picpath is not None:
        picture = requests.get(piclink).content
    else:
        picture = 0   
        
        
        
    masterList.append([name, state, party, district, picture, piclink])


conn = pyodbc.connect('Driver={SQL Server};'
                      'Server=DWILL_RIG\SQLEXPRESS;'
                      'Database=congress;'
                      'Trusted_Connection=yes;')
cursor = conn.cursor()
#name,state,party,district,picture
for y in range(len(masterList)):
    cursor.execute("Insert into members (name,state,party,district,picture, picstring) values (?,?,?,?,?,?)", masterList[y][0], masterList[y][1], masterList[y][2], masterList[y][3], masterList[y][4], masterList[y][5])
conn.commit()