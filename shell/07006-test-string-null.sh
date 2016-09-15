#!/bin/bash
#	测试 null 字符串和非引用字符串

#	如果一个字符串没被初始化，那么他就没有定义的值
#	这种状态叫 "null" (与 0 不同)

if [ -n $string1 ]
then 
	echo "string \"string1\" is not null."
	echo "string \"string1\" is $string1"
else
	echo "string \"string1\" is null."
fi
echo
#	测试结果： string1 非空


if [ -n "$string1" ]
then
	echo "string \"string1\" is not null."
	echo "string \"string1\" is $string1"
else
	echo "string \"string1\" is null."
fi
echo


if [ $string1 ]
then
	echo "string \"string1\" is not null."
	echo "string \"string1\" is $string1"
else
	echo "string \"string1\" is null."
fi
echo


string1=initialized
if [ $string1 ]
then
	echo "string \"string1\" is not null."
	echo "string \"string1\" is $string1"
else
	echo "string \"string1\" is null."
fi
echo


string1="a = b"
if [ $string1 ]
then
	echo "string \"string1\" is not null."
	echo "string \"string1\" is $string1"
else
	echo "string \"string1\" is null."
fi
echo

exit 
