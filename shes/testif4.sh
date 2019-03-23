#!/bin/bash
#Author: ading (e-mail: ading_007@sina.com)

read -p "Please input a fileName:" file
if [ -z "$file" ]
	then
		echo "$file is null"
		exit 1
elif [ ! -e "$file" ]
	then
		echo "$file is not exist!"
		exit 2
elif [ -d "$file" ]
	then
		echo "$file is dir."
elif [ -f "$file" ]
	then
		echo "$file is file."
else
	echo "$file is other file."
fi
