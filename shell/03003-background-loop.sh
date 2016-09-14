#!/bin/bash

for i in 1 2 3 4 5 6 7 8 9 10	#	第一个循环
do
	echo -n "$i:"
	sleep 1
done&		#	在后台运行这个循环
			#	在第二个循环之后，将在某些时候执行。 

echo	#	这个echo某些时候将不会被显示

for i in 11 12 13 14 15 16 17 18 19 20
do 
	echo -n "$i:"
	sleep 1
done

echo	#	这个echo某些时候将不会被显示

exit 0
