#!/bin/bash
#Author: ading (e-mail:ading_007@sina.com)

echo 'please input 1 if you want to go shanghai.'
echo 'please input 2 if you want to go beijing.'
echo 'please input 3 if you want to go shenzhen.'
read -t 30 -p "please input number:" cho
case "$cho" in
	"1")
		echo "shanghai ticket is getting out!"
		;;
	"2")
		echo "beijing ticket is getting out! welcome to beijing!!!!!!!!!!"
		;;
	"3")
		echo "shenzhen ticket is getting out! please waiting..........."
		;;
	  *)
		echo "error! please input according to  above comment!"
		;;
esac
