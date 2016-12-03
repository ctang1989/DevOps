#!/bin/sh
#Author: CTANG
#Date: 2016/08/04
#------function split------
. /etc/init.d/functions
function checkURL() {
	checkUrl=$1
	echo 'Check URL Start...'
	judge=($(curl -I -s --connect-timeout 2 ${checkUrl}|head -1|tr " " "\n"|tr "\r" "\n"))
	if [[ "${judge[1]}" == '200' && "${judge[2]}" == 'OK' ]]; then
		action "${checkUrl}" /bin/true
	else
		action "${checkUrl}" /bin/false
		echo "Try Again...";sleep 3;
		judgeagain=($(curl -I -s --connect-timeout 2 ${checkUrl}|head -1|tr " " "\n"|tr "\r" "\n"))
		if [[ "${judgeagain[1]}" == '200' && "${judgeagain[2]}" == 'OK' ]]; then
			action "${checkUrl}" /bin/true
		else
			action "${checkUrl}" /bin/false
		fi
	fi
	sleep 1;
}
#Usage Method
checkURL http://www.ctang.com


#执行结果
#[root@ctang scripts]# sh check_url.sh    
#Check URL Start...
#http://www.ctang.com                                       [FAILED]
#Try Again...
#http://www.ctang.com                                       [  OK  ]
#[root@ctang scripts]# 