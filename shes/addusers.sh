#!/bin/bash
#Author:ading (e-mail: ading_007@sina.com)

read -t 30 -p "please input the number of users needed:" num
read -t 30 -p "please input user name:" names
read -t 30 -p "please input init passwd:" passwd
if [ ! -z "$num" -a ! -z "$names" -a ! -z "$passwd" ]
	then
		y=$(echo $num | sed 's/[1-9]//g')
		if [ -z "$y" ]
			then
				for ((i=1;i<=$num;i=i+1))
					do
						/usr/sbin/useradd $names$i &>/dev/null
						echo $passwd | /usr/bin/passwd --stdin "$names$i" &>/dev/null
					done
		fi
fi
