#!/bin/sh
Dateformat=`date +%Y%m%d`
Basedir="/application/nginx"
Nginxlogdir="$Basedir/logs"
Logname="access_www"
[ -d $Nginxlogdir ] && cd $Nginxlogdir||exit 1
[ -f ${Logname}.log ]||exit 1
/bin/mv ${Logname}.log ${Dateformat}_${Logname}.log
$Basedir/sbin/nginx -s reload
