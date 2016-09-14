echo "the # here does not begin a comment."
echo 'the # here does not begin a comment.'
echo the \# here does not begin a comment.
echo the # 这里开始一个注释

echo ${PATH#*:}		#参数替换，不是一个注释
echo $((2#101011))	#数制转换，不是一个注释

