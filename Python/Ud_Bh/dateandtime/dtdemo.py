import time,datetime
epochseconds = time.time()
print(epochseconds)

t = time.ctime(epochseconds)
print(t)

dt = datetime.datetime.today()
print('Current Date: {}/{}/{}'.format(dt.day,dt.month,dt.year))
print('Current Time: {}:{}:{}'.format(dt.hour,dt.minute,dt.second))
