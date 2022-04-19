#!/bin/bash
read
len=`expr length "$REPLY"`
while [ $len -gt 0 ]
do
    char=${REPLY:$len-1:1}
x=$(printf "%d" "'$char'")
let x=x+1
char1=$(printf "\x$(printf %x $x)")
echo -n  "$char1"
len=$((len-1))
done

