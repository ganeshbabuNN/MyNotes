import urllib as url
import xml.etree.ElementTree as et

def addupnumbers(A):
    result = 0
    for x in A:
        result = result+x
    return result
web_data = url.urlopen("http://www.w3schools.com/xml/cd_catalog.xml")
str_data = web_data.read()

xml_data = et.fromstring(str_data)

cd_list = xml_data.findall("CD")
cd_prices = []
for x in cd_list:
     cd_prices.append(float(x.find("PRICE").text))


print addupnumbers(cd_prices)
