#!/bin/bash

#裸体变量

echo

#	变量什么时候是裸体的，比如前边少了$的时候。
#	当它被赋值的时候，而不是被引用的时候。

a=879
echo "The value of \"a\" is $a."

#	使用 let 赋值
let a=16+5
echo "The value if \"a\" is now $a."

echo

#	在 for 循环中
echo -n "Value of \"a\" in the loop are:"
for a in 7 8 9 11
do
	echo -n "$a "
done

echo
echo

#	在 read 命令状态中

echo -n "Enter \"a\""
read a
echo "The value of \"a\" is now $a."
echo

exit 0

