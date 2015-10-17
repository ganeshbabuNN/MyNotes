#!/bin/bash
file=ex.txt
#lines=0
while IFS= read -r char
	do
if [ $char='\n' ]
 then
    echo "end of line"
fi
done < "$file"
