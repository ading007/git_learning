#!/bin/bash
#author ading (e-mail: ading_007@sina.com)

date=$(date +%y%m%d)
size=$(du -sh /etc)
if [ -d /tmp/etcbak ]
	then
		echo "Date is : $date"> /tmp/etcbak/bakinfo.txt
		echo "size is : $size">>/tmp/etcbak/bakinfo.txt
		cd /tmp/etcbak
		tar -zcf etc_$date.tar.gz /etc bakinfo.txt &>/dev/null
		rm -rf /tmp/etcbak/bakinfo.txt
	else
		mkdir /tmp/etcbak
		echo "Date is : $date"> /tmp/etcbak/bakinfo.txt
		echo "size is : $size">>/tmp/etcbak/bakinfo.txt
		cd /tmp/etcbak
		tar -zcf etc_$date.tar.gz /etc bakinfo.txt &>/dev/null
		rm -rf /tmp/etcbak/bakinfo.txt
fi
