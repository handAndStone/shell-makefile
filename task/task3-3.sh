ERROR=1
START1=1MB
SIZE1=128KB
START2=2MB
SIZE2=256KB
FILENAME=task3-3.txt

#********************************************
#	要求两个原文件大小分别满足大于 1.128MB、2.256MB，不满足，程序异常结束
#*********************************************

#==========================================================================================================
#	至少要有两个参数，分别为两个原文件，第三个参数为生成文件，不指定默认在当前目录生成
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
						`dd if\="$1" of\="$3" bs\=1 count\=$SIZE1 skip\=$START1 seek\=0 conv\=notrunc`
						`dd if\="$2" of\="$3" bs\=1 count\=$SIZE2 skip\=$START2 seek\=$SIZE2 conv\=notrunc`
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
					`dd if\="$1" of\="$FILENAME" bs\=1 count\=$SIZE1 skip\=$START1 seek\=0 conv\=notrunc`
					`dd if\="$2" of\="$FILENAME" bs\=1 count\=$SIZE2 skip\=$START2 seek\=$SIZE2 conv\=notrunc`
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
	
