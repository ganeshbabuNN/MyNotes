#!/usr/bin/bash
echo "bhuvan"
FILENAME=$1
count=0

while read LINE
do
       count++
      echo "$count $LINE"

done < $FILENAME

echo -e "\nTotal $count Lines read"
