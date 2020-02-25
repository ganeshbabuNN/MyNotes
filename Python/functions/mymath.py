'''
Created on Oct 19, 2017

@author: bharaththippireddy
'''

def sum(x,y):
    return x+y

def diff(x,y):
    return x-y

if __name__ == '__main__':
    print(sum(10,5))
    print('This module is being run as a program')
else:
    print('This module is being used somewhere else',__name__)