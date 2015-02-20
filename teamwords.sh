#! /bin/bash

usage ()
{
  echo 'Usage : <nbefore> <nafter>'
  exit
}

if [ "$#" -ne 2 ]
then
  usage
fi

cat superbowl.html | tr -s '[[:punct:][:space:]]' '\n' | grep -i -A $2 -B $1 --color '\(seahawks\)\|\(patriots\)' | tr -s '\n' ' ' | tr -s '-' '\n' | sed  '/^ $/d'
