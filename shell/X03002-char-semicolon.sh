#	；	命令分隔符，可以在一行上面显示多个命令。


filename=test


echo hello;echo there

if [ -x "$filename" ];then #if 和 then 之间需要分隔
	echo "File $filename exists.";cp $filename $filename.bak
else
	echo "File $filename not found.";touch $filename
fi;echo "File test complete."
