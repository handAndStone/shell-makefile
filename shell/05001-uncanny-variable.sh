#!/bin/bash

#	echo 诡异的变量

var="'(]\\{}\$\""

echo '$var'
echo "$var"

echo

IFS='\'
echo $var
echo "$var"

exit 0
