
#!/bin/bash


if [ $# -ne 1 ];
then
  echo "Usage: $0 filename";
  exit -1
fi

filename=$1
egrep -o "\b[[:alpha:]]+\b" $filename | \

awk '{ count[$0]++ }
END {printf("") ;
for(ind in count)
{ printf("Word:%s-Count of repetition:%d\n",ind,count[ind]); }
}'
