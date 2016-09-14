#!/bin/bash

#	;;	终止"case"选项

variable=abc

case "$variable" in
abc)	echo "\$variable = abc";;
xyz)	echo "\$variable = xyz";;
esac

exit 0
