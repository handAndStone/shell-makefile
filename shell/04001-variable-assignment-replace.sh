#!/bin/bash


a=375
hello=$a


echo hello

echo $hello

echo ${hello}

echo "$hello"

echo "${hello}"

echo

hello="A B  C   D"
echo $hello		#	A B C D
echo "$hello"	#	A B  C   D
#	引用一个变量将保留其中的空白，当然，如果变量替换就不会保留了

echo '$hello'	#	$hello

#	全引用的作用将导致 "$" 变成一个单独的字符。

#	注意两种不同引用的效果


hello=    #	设置为空值
echo "\$hello(null value)=$hello"
#	注意设置一个变量为空，与 unset 它，不是一回事，虽然看起来一样


#	------------------------------

#	可以在一行上设置多个变量，要以空白分隔。小心，这将会降低可读性和可移植性

var1=21 var2=22 var3=$V3
echo
echo "var1=$var1 var2=$var2 var3=$var3"

#	在老版本的 "sh" 上，可能会有问题。

#	------------------------------------

echo;echo


numbers="one two three"
#
other_numbers="1 2 3"
#
#	如果变量中有空白，那么引用就必要了
#

echo "numbers=$numbers"
echo "other_numbers=$other_numbers"
echo

echo "uninitialized_variable=$uninitialized_variable"
#	uninitialized 变量为空值（根本就没赋值）。
uninitialized_variable=  #	声明，但是没被初始化，其实和前面被设置为空值的作用是一样的
echo "uninitialized_variable=$uninitialized_variable"

uninitialized_variable=23
unset uninitialized_variable	#unset it
echo "uninitialized_variable=$uninitialized_variable"

echo

exit 0
