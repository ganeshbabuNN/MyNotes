import re
str = "Take 1 up 1-3-2019 One 23 idea.One idea 45 at a Time 12-11-2020"
result = re.search(r'o\w', str)
print(result)

result = re.findall(r'o\w\w', str)
print(result)

result = re.match(r'T\w\w', str)
print(result.group())

result = re.sub(r'One', 'Two', str)
print(result)

result = re.findall(r'O\w{1,2}', str)
print(result)

result=re.split(r'\d+',str)
print(result)

result = re.findall(r'\d{1,2}-\d{1,2}-\d{4}', str)
print(result)

result = re.search(r'^T\w*', str)
print(result.group())











