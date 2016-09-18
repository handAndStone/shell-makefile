#!/bin/bash

KB64=`expr 64 \* 1024`

filepath="task3-2.txt"
if [ -n "$1" ]
#========================================================================
#	参数$1为一个文件
then
	if [ -f "$1" ]
	then
		filesize=`ls -l $1 | awk '{printf $5}'`
		dsize=$(($filesize%$KB64))
		if [ "$dsize" -ne 0 ]
		#=======================================================
		#文件大小不是64KB整数倍
		then
			insertsize=$(($KB64-$dsize))
			for(( i=0;i<$insertsize;i++ ))
			do
				echo   >>"$filepath"
			done
			printf "%-15s %d B\n"  原文件大小： "$filesize"
			printf "%-15s %d B\n"  插入大小： "$insertsize"
			printf "%-15s %d B\n"  现文件大小： "$(($filesize+$insertsize))"
		#------------------------------------------------		
		#文件大小正好是64KB整数倍
		else
			printf "文件 \"$1\" 已经 64K 对齐，无需操作。"
		#==================================================
		fi
#--------------------------------------------------------------------------
	#	文件不存在
	else
		echo "文件 \"$1\" 不存在，是否在“当前”目录下创建并生成64KB大小的文件“task3-2.txt”？【y/n】"
		while read keychar
		do
			if [ "$keychar" = "y" ]
			then
				#=========================
				#移除原文件
				if [ -f "$filepath" ]
				then
					`rm "$filepath"`
				fi
				#========================
				`touch "$filepath"`
				for(( i=0;i<"$KB64";i++ ))
				do
					echo  >>"$filepath"
				done
				echo "成功创建 64KB 文件 \"$filepath\"."
				exit 0
			fi

			if [ "$keychar" = "n" ]
			then
				exit 0   #	脚本正确退出	
			fi
		done
	fi
		echo
else
	echo "输入文件路径!"
	exit 0
fi
