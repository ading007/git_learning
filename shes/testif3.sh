#!/bin/bash
#Author: ading (e-mail: ading_007@sina.com)

port=$(nmap -sT 192.168.1.155 | grep tcp | grep http | awk '{print $2}')
if [ "$port" == "open" ]
	then
		echo "$(date) httpd service has been started!"
	else
		/etc/rc.d/init.d/httpd start &>/dev/null
		echo "$(date) restart httpd !!!"
fi
