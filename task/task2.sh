#!/bin/bash

WebUrl=http://v.youku.com/v_show/id_XMTY5NDg2MzY5Ng

wget -O task2.html "$WebUrl"
Line_Num_And_Cont=`grep -n -o  'class="sn"' task2.html`
arr=(${Line_Num_And_Cont// /})
len=${#arr[@]}
echo $len
for((i=0;i<"$len";i++))
do
	printf "%s    " "${arr[$1]}"
	ARR=${arr[$i]}
	printf "%s    "  $ARR
	array=${ARR//:/}
	printf "%d    "  ${#array[@]}
	printf "\"line number:\"%s" "${array[0]}"
	printf "%s\n" "${array[1]}"
done
