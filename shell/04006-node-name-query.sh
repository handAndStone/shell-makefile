#!/bin/bash
 

#	Does a 'who is domain-name' lookup on any of 3 alternate servers:
#	ripe.net, cw.net, radb.net

#	使用 ln 命令将这个文件链接到 /usr/local/bin 目录下

E_NOARGS=65

if [ -z "$1" ]
then
	echo "Usage:`basename $0`[domain-name]"
	exit $E_NOARGS
fi


#	检查参数名字，调用合适的服务器


case $1 in
	"www.baidu.com"	) whois www.baidu.com;;
	"www.sina.com"	) whois www.sina.com;;
	*				) echo "Unrecognized domain!"
esac


exit $?
