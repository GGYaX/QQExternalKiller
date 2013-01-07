#!/bin/bash
#
# watchdog
#
# this watchdog is to kill QQExternal.exe each miniut
# crontab -e
# * * * * * /usr/sbin/watchdog

NAME=QQExternal

ps ax | grep -v grep |grep $NAME | grep -oP "(?<= )[0-9]+ "
case $? in
	0)
		ps ax | grep -v grep |grep $NAME | grep -oP "^ ?[0-9]+" | xargs kill
	;;
esac

exit
