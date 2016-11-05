#!/usr/bin/python
# -------------- f i l e  e x a m p l e----------------------

f1 = open("foo.txt","r+")
print "name of the file is ",f1.name
print "closed or not ",f1.closed
print "opening mode ",f1.mode
f1.close
