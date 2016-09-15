#!/bin/bash

#	技巧：
#	如果不确定一个特定的条件如何判断。在一个 if-test 结构中测试它。

echo

echo "Testing \"0\""

if [ 0 ] 
then
	echo "0 is true."
else
	echo "0 if false."
fi

echo

echo "Testing \"1\""
if [ 1 ]
then
	echo "1 is true."
else
	echo "1 is false."
fi

echo

echo "Testing \"-1\""
if [ -1 ]
then
	echo "-1 is true."
else
	echo "-1 is false."
fi

echo

echo "Testing \"NULL\""
if [  ]
then
	echo "NULL is true."
else
	echo "NULL is false."
fi
echo

echo "Testing \"xyz\""
if [ xyz ]
then
	echo "Random string is true."
else
	echo "Random string is false."
fi
echo


echo "Testing \"\$xyz\""
if [ $xyz ]
then
	echo "Uninitialized variable is true."
else
	echo "Uninitialized variable is false."
fi
echo

echo "Testing \"-n \$xyz\""
if [ -n "$xyz" ]
then
	echo "Uninitialized variable is true."
else
	echo "Uninitialized variable is false."
fi
echo

xyz= 
echo "Testing \"-n \$xyz\""
if [ -n "$xyz" ]
then
	echo "Null variable is true."
else
	echo "Null variable is false."
fi
echo


echo "Testing \"false\""
if [ "false" ]
then
	echo "\"false\"  is true."
else
	echo "\"false\" is false."
fi
echo

echo "Testing \"\$false\""
if [ "$false" ]
then
	echo "\"\$false\" is true."
else
	echo "\"\$false\" is false."
fi
echo

exit 0

