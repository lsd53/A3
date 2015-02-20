#! /bin/bash 

usage ()
{
  echo 'Usage : <input file>'
  exit
}

if [ "$#" -ne 1 ]
then
  usage
fi

cat $1 | tr -s '[[:punct:][:space:]]' '\n' > temp.txt
grep -xf temp.txt english.txt > correct.txt
grep -vxf correct.txt temp.txt
rm temp.txt
rm correct.txt
