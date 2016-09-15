#!/bin/bash

#	echo 诡异的变量

var="'(]\\{}\$\""

echo '$var'
echo "$var"
#	'' 操作总体上和 "" 很像，但是不允许引用变量。
echo

IFS='\'     #   将 \ 转换成了空格
echo $var
echo "$var"

exit 0
