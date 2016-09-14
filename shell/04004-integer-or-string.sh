#!/bin/bash

a=2334
let "a+=1"	#a=2335
echo "a=$a"
echo



b=${a/23/BB}  #	a 中的 23 替换为 BB 
echo "b=$b"	  # b=BB35	

declare -i b
echo "b=$b"		# b=BB35


let "b+=1"
echo "b=$b"  # b=1
echo


c=BB34
echo "c=$c"  # c=BB34


d=${c/BB/23}  # d=2334
echo "d=$d"
let "d+=1"  # d=2335
echo "d=$d"
echo

#	关于空变量怎样？

e=""
echo "e=$e" # e=
let "e+=1"
echo "e=$e" # e=1
echo

#	关于未申明的变量怎样？

echo "f=$f" # f=
let "f+=1" # f=1
echo "f=$f"
echo



exit 0


