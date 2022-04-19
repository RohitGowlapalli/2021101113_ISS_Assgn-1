
#!/bin/bash
read
len=`expr length "$REPLY"`
let len1=($len-2)/2
while [ $len1 -ge 0 ]
do
    newstring=$newstring${REPLY:$len1:1}
   len1=$((len1-1))
done
echo -n  "$newstring"
len=`expr length "$REPLY"`
let len1=($len-2)/2
while [ $len1 -lt $len ]
do
    newstring1=$newstring1${REPLY:$len1+1:1}
   len1=$((len1+1))
done
echo -n "$newstring1"

