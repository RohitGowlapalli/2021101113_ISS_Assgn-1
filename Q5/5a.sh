#!/bin/bash
read
len=`expr length "$REPLY"`
while [ $len -gt 0 ]
do
    newstring=$newstring${REPLY:$len-1:1}
   len=$((len-1))
done
echo "$newstring"

