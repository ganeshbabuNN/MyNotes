import urllib.request

try:
    url = urllib.request.urlopen("https://www.python")
    content = url.read()
    url.close()
except urllib.error.HTTPError:
    print("The web page is not found")
    exit()
    
f = open('python.html','wb')
f.write(content)
f.close()