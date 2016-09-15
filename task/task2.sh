#!/bin/bash

WebUrl=http://v.youku.com/v_show/id_XMTY5NDg2MzY5Ng

wget -O task2.html "$WebUrl"
Line_Num_And_Cont=`grep -n -o  'class="sn"' task2.html`
arr=(${Line_Num_And_Cont// /})
len=${#arr[@]}
echo $len
for((i=0;i<30;i++))
do
	array=${arr[$i]//:/}
	echo "$array[0]"
	echo "$array[1]"
done
