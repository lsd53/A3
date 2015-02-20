#! /bin/bash 
cat $1 |tr -s '[[:punct:][:space:]]' '\n' > temp.txt
cat english.txt| tr -s '\n' '|' >english1.txt

grep -Ewvf english1.txt temp.txt



