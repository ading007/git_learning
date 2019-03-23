#!/bin/bash
#
#Auto backup mysql
#Author: ading (E-mail: ading_007@sina.com)

DBCMD=/usr/local/mysql/bin/mysqldump
DBUSER=root
DBPASS=1010b0ah
DATABASE=testbase
BAK_DIR=/data/backup/$(date +%Y%m%d%h%M)

if [ ! -d $BAK_DIR ];then
	mkdir -p $BAK_DIR
fi
if [ $UID -ne 0 ];then
	echo "Must to be use root run shell script!"
	exit
fi
echo "----------------------"
echo "starting backup mysql, please waiting..........."
$DBCMD -u$DBUSER -p$DBPASS $DATABASE > $BAK_DIR/$DATABASE.sql
if [ $? -eq 0 ];then
	echo "database is successfully backup!"
else
	echo "database backup is failed!"
fi
find $BAK_DIR -mtime +30 -exec rm -rf {} \; 
