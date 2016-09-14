#!/bin/bash

#	使用 shift 穿越所有的位置参数


until [ -z "$1" ]  #	直到所有的参数都用光
do
	echo -n "$1 "
	shift
done

echo

exit 0
