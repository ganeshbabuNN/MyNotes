from datetime import date
import time

startTime = time.perf_counter()

ldates = []

d1=date(2016,8,12)
d2=date(2016,7,12)
d3=date(2018,8,12)

ldates.append(d1)
ldates.append(d2)
ldates.append(d3)

ldates.sort()

time.sleep(3)

for d in ldates:
    print(d)


endTime = time.perf_counter()

print("Execution Time",endTime-startTime)

