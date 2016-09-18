#!/bin/bash

WebUrl=http://v.youku.com/v_show/id_XMTY5NDg2MzY5Ng

wget -O task2.html "$WebUrl"
Line_Num_And_Cont=`grep -n -o  'class="sn"' task2.html`


#===========================================================================================================
#这两个变量确定内容是否在同一行
last_Line_Number=0
this_Line_Number=999


scissors=class\=\"sn\"

echo "$scissors"
behind_Content=
forward_Content=

line_Content=
#============================================================================================================

#============================================================================================================
#	获取链接与标题
#	某一集的表示
#	<div class="item " name="tvlist" flag="24" seq="7" id="item_XMTcxMDk0OTcxNg==" title="第24集"><a class="sn"  href="http://v.youku.com/v_show/id_XMTcxMDk0OTcxNg==.html" data-from="y1.2-2.4.24"><span class="sn_num">24</span></a><div id="vcard24" class="" vid="427737429"></div></div>

#----------------------------------------------------------------------------------------------------------

#	格式化一下
#	<div class="item " name="tvlist" flag="24" seq="7" id="item_XMTcxMDk0OTcxNg==" title="第24集">
#		<a class="sn"  href="http://v.youku.com/v_show/id_XMTcxMDk0OTcxNg==.html"     data-from="y1.2-2.4.24">
#			<span class="sn_num">
#				24
#			</span>
#		</a>
#		<div id="vcard24" class="" vid="427737429">
#		</div>
#	</div>
#================================================================================================================

arr=(${Line_Num_And_Cont// /})
len=${#arr[@]}
echo $len
for((i=0;i<"$len";i++))
do
	ARR=${arr[$i]}
	this_Line_Number=${ARR%:*}
	if [ $this_Line_Number == $last_Line_Number ] #	内容在同一行
#===============================================================================================================
	############################################################################################################
	#	var=abcdcefg
	#	${var##*c}=efg
	#	${var#*c}=dcefg
	#	${var%%c*}=ab
	#	${var%c*}=abcd
	#***********************************************************************************************************
	#
	#	标题位于 forward 最后一个 title=" 与最后一个 " 之间
	#	链接位于 behind  第一个   href="  与第二个   " 之间
	#	
	#############################################################################################################
	#	某一行的第二次及第二次以后的操作，直接操作behind_Content
	then
		forward_Content=${behind_Content%%$scissors*}
		behind_Content=${behind_Content#*$scissors}	
		
		temp_Title=${forward_Content##*title=\"}
		title=${temp_Title%%\">*}
		temp_Link=${behind_Content#*href=\"}
		link=${temp_Link%%\"*}
		echo "$title  $link"
#---------------------------------------------------------------------------------------------------------------
	#	某一行的第一次操作
	else
		line_Content=`sed -n "${this_Line_Number}p" task2.html`
		last_Line_Number=$this_Line_Number
	
		forward_Content=${line_Content%%$scissors*}		
		behind_Content=${line_Content#*$scissors}

		temp_Title=${forward_Content##*title=\"}
		title=${temp_Title%%\">*}
		temp_Link=${behind_Content#*href=\"}
		link=${temp_Link%%\"*}
		echo "$title  $link"
#==================================================================================================================
	fi
done
