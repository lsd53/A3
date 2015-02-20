#! /bin/bash

l1= cat $1|wc -l
l2= cat $2|wc -l
if [ $l1 -ge  $l2 ]
then
	for x in $(seq 1 1 30)
	do

		if [ $(($x%2)) -eq 0 ]
		then

			cat $1| head -$x |tail -1
			
		else
			cat $2| head -$x |tail -1
			
		fi 
	done
else
	
	for x in $(seq 1 1 30)
	do

		if [ $(($x%2)) -eq 0 ]
		then

			cat $1| head -$x |tail -1
			
		else
			cat $2| head -$x |tail -1
			
		fi 
	done

fi

