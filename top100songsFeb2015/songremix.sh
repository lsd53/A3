#! /bin/bash

l1= cat $1|wc -l
l2= cat $2|wc -l
x=1
l3=$(($l1*2))
l4=$(($l2*2))
if [ $l1 -ge  $l2 ]
then
	while [ $x -ne  $l4 ]
	do

		if [ $(($x%2)) -eq 0 ]
		then

			cat $1| head -$x |tail -1
			x=$(($x+1))
			
		else
			cat $2| head -$x |tail -1
			x=$(($x+1))
			echo "hasiofoiasjfoi"
		fi 
	done
else
	
	until [ $x -eq $l3 ]
	do

		if [ $(($x%2)) -eq 0 ]
		then

			cat $1| head -$x |tail -1
			x=$(($x+1))
		else
			cat $2| head -$x |tail -1
			x=$(($x+1))
		fi 
	done

fi

