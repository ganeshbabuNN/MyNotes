from threading import *

def displayNumbers():
    i = 0
    print(current_thread().getName())
    while(i<=10):
        print(i)
        i+=1

print(current_thread().getName())
t = Thread(target=displayNumbers)
t.start()