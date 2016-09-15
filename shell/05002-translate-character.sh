#!/bin/bash

echo;echo

echo "\v\v\v\v"	#	逐字的打印\v\v\v\v
#	使用 -e 选项的 echo 命令来逐行打印转译符

echo "VARTICALTABS"

echo -e "\v\v\v\v"	#	Prints 4 vertical tabs.
echo "================"


#	如果使用了 $'\X' ，哪么 -e 选项就不必要了

echo;echo "NEWLINE AND BEEP"
echo $'\n'	#	新行
echo $'\a'	#	Alert(beep)

echo "===================="
echo "QUOTATION MARKS"
#	版本2以后bash允许使用 $'\nnn' 结构
#	注意这种情况，'\nnn'是8进制
echo $'\t\042\t'	#	Quote('')framed by tabs.

#	早一点的bash允许使用 '\x022'这种形式
echo "=================="
echo

#	分配 ASSIC 字符到变量中
#	--------------------------
quote=$'\042'	#	\042 是 ",分配到变量中
echo "$quote This is a quoted string,$quote and this lies outside the quotes."

echo

#	Concatenating ASSIC chars in a variable.
#	变量中的连续的 ASSIC  char
triple_underline=$'\137\137\137'	#	\137 是 8 进制的 ASSIC 码 '_'.

echo "$triple_underline UNDERLINE $triple_underline"

echo

ABC=$'\101\102\103\010'		#	\101 \102 \103 是 A B C 的 8 进制	
echo $ABC

echo;echo

escape=$'\033'	# \033 是 8 进制码 for escape.
echo "\"escape\" echoes as $escape"
# "escape" echoes as     没有变量被输出

echo;echo


