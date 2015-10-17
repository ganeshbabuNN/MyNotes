user = raw_input("Enter your username")
file_object = open("usernames1.txt","a")
file_object.write(user+"\n")
file_object.close()

file_object2 = open("usernames1.txt","r")
userlist = file_object2.read()
print "The previous users of this program were:"
print userlist
