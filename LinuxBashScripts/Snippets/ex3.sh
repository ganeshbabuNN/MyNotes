#!/bin/bash
# data file
INPUT=1.c
 
# while loop
while IFS= read -nl char
do
# display one character at a time
	echo  "$char"
done < "$INPUT"
