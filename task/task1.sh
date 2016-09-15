#!/bin/bash

PERIOD=5
while(true)
do
	echo "---------------------------------------------------------------"
#	显示当前系统时间
	echo "当前系统时间：$(date +%Y-%m-%d\ %H:%M:%S)"

#	---------------------------------------------------
#	显示进程ID、名字、VmRSS
#
#	获取所有进程的详细信息
	ps -aux | while read line
	do 
		arr=(${line// / }) 
		len=${#arr[@]}
		case $len in
		"11"		)	printf "%-10s%-10s%s\n" ${arr[1]} ${arr[5]} ${arr[10]};;
		"12"		)	printf "%-10s%-10s%s %s\n" ${arr[1]} ${arr[5]} ${arr[10]} ${arr[11]};;
		"13"		)	printf "%-10s%-10s%s %s %s\n" ${arr[1]} ${arr[5]} ${arr[10]} ${arr[11]} ${arr[12]};;
		"14"		)	printf "%-10s%-10s%s %s %s %s\n" ${arr[1]} ${arr[5]} ${arr[10]} ${arr[11]} ${arr[12]} ${arr[13]};;
		"15"		)	printf "%-10s%-10s%s %s %s %s %s\n" ${arr[1]} ${arr[5]} ${arr[10]} ${arr[11]} ${arr[12]} ${arr[13]} ${arr[14]};;
		"16"		)	printf "%-10s%-10s%s %s %s %s %s\n" ${arr[1]} ${arr[5]} ${arr[10]} ${arr[11]} ${arr[12]} ${arr[13]} ${arr[14]} ${arr[15]};;
		esac
	done
	echo "当前系统时间：$(date +%Y-%m-%d\ %H:%M:%S)"
	echo "---------------------------------------------------------------"
	echo
	sleep "$PERIOD"
done
