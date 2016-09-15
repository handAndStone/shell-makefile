#!/bin/bash

a=4
b=5

#	变量 a,b 既可以当成整形又可以当成字符串。这里在算数比较和字符串比较之间有些混淆，因为 bash 变量并不是强类型的。

#	bash 允许对整型变量操作和比较，当然变量中之包涵数字字符，但是还是要考虑清楚再做。


echo

if [ "$a" -ne "$b" ] 
then
	echo "$a is not equal to $b"
	echo "(arithmetic comparison)"
fi

echo

if [ "$a" != "$b" ]
then 
	echo "$a is not equal to $b."
	echo "(string comparison)"
fi

echo

exit 0
