#! /bin/bash
cat frankenstein.txt|  tr -s '[[:punct:][:space:]]' '\n'   | tr '[A-Z]' '[a-z]' | sort -f |uniq -c  | sort -n> sorted.txt 
grep --color -w -v  -f prepositions.txt sorted.txt|tail -100
rm sorted.txt

