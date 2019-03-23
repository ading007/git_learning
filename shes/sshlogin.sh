#!/bin/bash
#
#Author: ading (E-mail: ading_007@sina.com)
#description: auto drop ssh failed ip address

SEC_FILE=/var/log/secure
IP_ADDR=$(tail -n 1000 $SEC_FILE |grep "Failed password" | egrep -o "([0-9]{1,3}\.){3}[0-9]{1,3}" |sort -nr |uniq -c|awk '$1>=4 {print $2}')
IPTABLE_CONF=/etc/sysconfig/iptables
echo
cat<<EOF
+++++++++++++++++++++++welcome to use ssh login drop failed ip+++++++++++++++++++++++++++++++++++++
+++++++++++++----------------------+++++++++++++++++++++++++++--------------+++++++++++++++++
EOF
echo -n "please waiting for 5s!"
for ((i=0;i<5;i++));do echo -n "-------";sleep 1;done
echo
for i in $(echo $IP_ADDR);do cat $IPTABLE_CONF |grep $i &>/dev/null
if [ $? -ne 0 ];then
	sed -i "/lo/a -A INPUT -s $i -m state --state NEW -m tcp -p tcp --dport 22 -j DROP" $IPTABLE_CONF
else
	echo "this $i is existed in iptables.please exit..... "
fi
done
/etc/init.d/iptables restart

