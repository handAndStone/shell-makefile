#!/bin/bash

#	从 /etc/fstab 中读取

File=/etc/fstab

{
	read line1
	read line2
} < $File

echo "First line in $File is:"
echo "$line1"
echo
echo "Seccond line in $File is:"
echo "$line2"

exit 0

#	现在，你怎么分析每行的分隔域
#	暗示：使用 awk.
