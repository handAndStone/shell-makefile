#!/bin/bash

a=23
echo $a
b=$a
echo $b

a=`echo hello!` #	把 echo 命令的结果传给变量 a
echo $a


a=`ls -l`
echo $a
echo
echo "$a"

exit 0
