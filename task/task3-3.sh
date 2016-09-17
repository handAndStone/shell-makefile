#!/bin/bash/

ERROR=1
START1=2MB
SIZE1=64KB
START2=1MB
SIZE2=128KB
if [ -n "$1" ]
then
	if [ -n "$2" ]
	then
		if [ -n "$3" ]
		then
			if [ -f "$1" ]
			then
				if [ -f "$2" ]
				then
					if [ -f "$3" ]
					then
#--------------------------------------------------------------------------------
#					核心代码
						`dd if\="$1" of\="$3" bs\=1 count\=10 skip\=0 seek\=0 conv\=notrunc`
#---------------------------------------------------------------------------------
					else
						echo "参数错误，第三个参数不是一个文件！"
						exit "$ERROR"
					fi
				else
					echo "参数错误，第二个参数不是一个文件！"
					exit "$ERROR"
				fi
			else
				echo "参数错误，第一个参数不是一个文件！"
				exit "$ERROR"
			fi	
		else
			if [ -f "$1" ]
			then
				if [ -f "$2" ]
				then
#---------------------------------------------------------------------------------
#					核心代码
					echo "缺少参数（输出文件）,将在当前目录下生成 \"task3-3.txt\" ！"
										
#---------------------------------------------------------------------------------
				else
					echo "参数错误，第二个参数不是一个文件！"
					exit "$ERROR"
				fi
			else
				echo "参数错误，第一个参数不是一个文件！"
				exit "$ERROR"
			fi
		fi
	else
		echo "缺少参数（源文件2）！"
		exit "$ERROR"
	fi
else
	echo "参少参数（源文件1）！"
	exit "$ERROR"
fi
	
