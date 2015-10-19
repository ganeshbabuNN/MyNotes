#!/bin/sh
while read  LINE  
do  
  echo $LINE 
if [ $LINE='\n' ] 
then
  echo "new line"
else 
if [ $line='\t' ]
then
  echo "new tab"
fi
done <$1  
echo $LINE
