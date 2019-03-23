#!/bin/bash
#
#Author: ading (mail:ading_007@sina.com)

echo "starting time task------------------+--------------------"
for ((i=0;i<10;i++))
	do
	echo -ne "\033[$(($RANDOM%6+31))m$i-\b\b\033[0m"
	sleep 1
	done
echo
