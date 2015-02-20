#! /bin/bash 
file1=$1
grep -v -w -f english.txt $file1
