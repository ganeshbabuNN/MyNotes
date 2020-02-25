from threading import *
from time import sleep

class MyThread:
    
    def displayNumbers(self):
        i = 0
        print(current_thread().getName())
        sleep(1)
        while(i<=10):
            print(i)
            i+=1

obj = MyThread()
t = Thread(target=obj.displayNumbers)
t.start()

t2 = Thread(target=obj.displayNumbers)
t2.start()

t3 = Thread(target=obj.displayNumbers)
t3.start()
