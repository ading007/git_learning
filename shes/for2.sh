#!/bin/bash
#Author:ading (e-mail: ading_007@sina.com)

s=0
for ((i=1;i<=100;i=i+1))
	do
		s=$(($s+$i))
	done
echo "sum of 1+2+3+...+100 is $s."

