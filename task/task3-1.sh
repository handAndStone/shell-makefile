#!/bin/bash

#======================================================
#
#	思想：往文件里面写空值n次
#
#=====================================================
FILESIZE=204800  #200KB,200MB太慢了

echo "$FILESIZE"
FILENAME=200MB.txt


if [ "$1" ]
#====================================================
#	参数$1为目录，在目录$1下生成文件
then
	if [ -d "$1" ]
	then
		echo "在目录 \"$1\"下生成文件"
		touch "$1$FILENAME"
		filesize=`ls -l "$1$FILENAME" | awk '{print $5}'`
		dsize=`expr $FILESIZE - $filesize` 
		for (( i=0; i < $dsize; i++ ));
		do
			echo   >> "$1$FILENAME";
		done
	else
		echo "\"$1\" 目录不存在，在当前目录下生成文件"
		touch "$FILENAME"
		filesize=`ls -l "$FILENAME" | awk '{print $5}'`
		dsize=`expr $FILESIZE - $filesize` 
		for (( i=0; i < $dsize; i++ ));
		do
			echo   >> "$FILENAME";
		done
	fi
#----------------------------------------------------------
else
	echo "在当前目录下生成文件"
	touch "$FILENAME"
	filesize=`ls -l "$FILENAME" | awk '{print $5}'`
	dsize=`expr $FILESIZE - $filesize` 
	for (( i=0; i < $dsize; i++ ));
	do
		echo   >> "$FILENAME";
	done
#==============================================================
fi


