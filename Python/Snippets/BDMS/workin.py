#!/usr/bin/python
#word count program

in_file = open("in.txt","r");
hold = []
dir_count = {};
count = 0;
rad_file = in_file.read()
#print rad_file	
for letter in rad_file:
	if ( letter != " " ):
		if count == 0:
#			if (letter != '\n'):
#			if count == 0:
			hold.append(letter);	
			count = count + 1;
		else:
#			if (letter != '\n'):
			hold[0] = hold[0] + letter;
	else:	
		if hold.count > 0:
			if dir_count.has_key(hold[0]):
				key_value = dir_count.vlaue(hold[0])
				key_value = key_value + 1
				dir_count[hold[0]] = key_value
			else:
				dir_count[hold[0]] = 1;
		count = 0;
		del hold[0];
		continue;
#print hold[0]
print "dircount",dir_count.items();

