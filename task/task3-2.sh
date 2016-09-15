#!/bin/bash

KB64=`expr 64 \* 1024`

if [ -n "$1" ]
filepath="$1"
then
	if [ -f "$filepath" ]
	then
		filesize=`ls -l $filepath | awk '{printf $5}'`
		dsize=$(($filesize%$KB64))
		if [ "$dsize" -ne 0 ]
		then
			insertsize=$(($KB64-$dsize))
			for(( i=0;i<$insertsize;i++ ))
			do
				echo   >>"$filepath"
			done
			printf "%-15s %d B\n"  原文件大小： "$filesize"
			printf "%-15s %d B\n"  插入大小： "$insertsize"
			printf "%-15s %d B\n"  现文件大小： "$(($filesize+$insertsize))"
		else
			printf "文件 \"$filepath\" 已经 64K 对齐，无需操作。"
		fi
	else
		echo "文件 \"$filepath\" 不存在，是否创建并生成64KB大小？【y/n】"
		while read keychar
		do
			if [ "$keychar" = "y" ]
			then
				echo 1
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
fi
