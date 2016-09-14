#!/bin/bash

#	作为用例，本脚本至少需要10个参数，如 ./scriptname 1 2 3 4 5 6 7 8 9 10

MINPARAMS=10

echo

echo "The name of this script is $0."
#	添加了 ./ 是为了当前目录                           测试发现并没有./

echo "The name of this script is \"`basename $0`\"."
#	去掉目录信息，具体见 `basename` 命令

echo

if [ -n "$1" ]  #	测试变量是否被引用
then
	echo "Parameter #1 is $1"
fi
if [ -n "$2" ]  
then
	echo "Parameter #2 is $2"
fi 
if [ -n "$3" ]  
then
	echo "Parameter #3 is $3"
fi
if [ -n "$4" ]  
then
	echo "Parameter #4 is $4"
fi
if [ -n "$5" ]  
then
	echo "Parameter #5 is $5"
fi
if [ -n "$6" ]  
then
	echo "Parameter #6 is $6"
fi
if [ -n "$7" ]  
then
	echo "Parameter #7 is $7"
fi
if [ -n "$8" ]  
then
	echo "Parameter #8 is $8"
fi
if [ -n "$9" ]  
then
	echo "Parameter #9 is $9"
fi
if [ -n "${10}" ]  
then
	echo "Parameter #10 is ${10}"
fi


echo "-------------------------------------"
echo "All the command-line parameters are:"$*""

if [ $# -lt "$MINPARAMS" ]   # $# 是传到脚本里的位置参数的个数
then
	echo
	echo "This script needs at least $MINPARAMS command argument!"
fi

echo

exit 0
