#!/bin/bash
#Author: ading (E-mail: ading_007@sina.com)

case "$1" in
	"-fl")
		echo -e "\e[1;30m $2 \e[0m"
		;;
	"-r")
		echo -e "\033[31m $2 \033[0m"
		;;
	"-g")
		echo -e "\033[32m $2 \033[0m"
		;;
	"-y")
		echo -e "\033[33m $2 \033[0m"
		;;
	"-p")
		echo -e "\033[35m $2 \033[0m"
		;;
	"-b")
		echo -e "\033[34m $2 \033[0m"
		;;
	"-cy")
		echo -e "\033[36m $2 \033[0m"
		;;
	"-w")
		echo -e "\033[37m $2 \033[0m"
esac

