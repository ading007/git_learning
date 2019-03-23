#!/bin/bash
#Author: ading (E-mail: ading_007@sina.com)

read -p "please input num for what want to add:" num
read -p "please input min of range needed:" min
sum=0
init=$min
while [ "$min" -le "$num" ]
	do
		sum=$(($sum+$min))
		min=$(($min+1))	
	done
echo "sum of $init-$num is $sum." 
