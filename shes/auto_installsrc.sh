#!/bin/bash
#
#auto install resource
#Author: ading (E-mail: ading_007@sina.com)

ngx_files=nginx-1.6.1.tar.gz
ngx_url=http://www.nginx.org/download/
ngx_src=$(echo $ngx_files | sed -e 's/\.tar\.gz//g')
mysql_files=mysql-5.1.17.tar.gz
php_files=php-5.3.3.tar.gz
src=(mysql php nginx exit)

function nginx_install() 
{
	wget -c ${ngx_url}/${ngx_files}
	tar xzf $ngx_files;cd $ngx_src;./configure;make;make install
	if [ $? -eq 0 ];then
		echo "nginx install successfully!"
	else
		echo "nginx install failed!!!"
fi
}
function mysql_install()
{
	tar zxf $mysql_files;cd mysql-5.1.17;./configure --prefix=/usr/local/mysql;make;make install
	if [ $? -eq 0 ];then
		echo "mysql install success!"
	else
		echo "mysql install failed!"
	fi
}
function php_install()
{
	if [ -d /usr/local/mysql ];then
		tar zxf $php_files;cd php-5.3.3;./configure --prefix=/usr/local/php5 --with-mysql=/usr/local/mysql;make;make install
	else
		echo "please pre install mysql!"
	fi
}
PS3="please choose number that you want to install resource:"
select i in ${src[@]}
	do
	case $i in
		mysql)
		mysql_install;;
		php)
		php_install;;
		nginx)
		nginx_install;;
		exit)
		exit;;
		*)
		echo "usage: mysql|php|nginx| help!"
        esac
	done



