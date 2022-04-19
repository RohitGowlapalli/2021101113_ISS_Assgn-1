#!/bin/bash
awk '!x[$0]++' $1 > test1.txt
mv test1.txt $1
