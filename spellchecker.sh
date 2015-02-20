#! /bin/bash 
cat $1 |tr -s '[[:punct:][:space:]]' '\n' > temp.txt

grep --color   -f englisht.txt temp.txt

