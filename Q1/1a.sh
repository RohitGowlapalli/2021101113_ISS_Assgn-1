#!/bin/bash
grep . $1 > test.txt
mv test.txt $1
