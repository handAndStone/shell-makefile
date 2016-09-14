#!/bin/bash

LOG_DIR=/var/log
ROOT_UID=0
LINES=50
E_XCD=66
E_NOTROOT=67

if [ -n "$1" ]
#	测试是否有命令行输入
then
	lines=$1
else
	lines=$LINES #默认，如果不再命令行中指定
fi

#	最好使用下面方法检测命令行参数
#
#
#	E_WRONGARGS=65 #非数值参数（错误的参数格式）
#
#	case "$1" in
#	""	) lines=50;;
#	*[!0-9]*) echo "Usage: `basename $0` file-to-cleanup"; exit $E_WRONGARGS;
#	*	) lines=$1;;
#	esac
#
#*	直到"Loops"的章节才会对上边的内容进行详细的描述


cd $LOG_DIR

if [ `pwd` != "$LOG_DIR" ]	#或这if [ "$PWD" != "$LOG_DIR" ]
							#不再/var/log中？
then
	echo "Can't change to $LOG_DIR."
	exit $E_XCD
fi	#在处理log file之前，再确认一遍当前目录是否正确。

#	更有效率的做法是
#
#	cd /var/log || {
#	echo "Cannot change to necessary directory." >&2
#	exit $E_XCD;
#	}


tail -$lines messages > mesg.temp #	保存log file的最后部分。
mv mesg.temp message #	变为新的log目录。


#	cat /dev/null > messages
#	*不再需要了，使用上边的方法更安全

cat /dev/null > wtmp	#	': > wtmp'和'> wtmp'具有相同的作用。
echo "Logs cleaned up."

exit 0
#	退出之前返回0,返回0表示成功。
























































