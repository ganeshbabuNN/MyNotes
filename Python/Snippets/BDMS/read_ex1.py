#!/usr/bin/python
file1 = open("foo1.txt","r+");
str = file1.read(2);
print str;
#current positon

position = file1.tell();
print "current position is :",position

position = file1.seek(1, 2);
str = file1.read(2);
print "string after repositioning is ", str

position = file1.tell();
print "current position is :",position
file1.close()
