#!/bin/sh


FILE=`zenity --file-selection --title="Enter folder to backup" --directory`

data=$(
zenity --forms --title="Schedule Time" \
	--text="Schedule time" \
	--separator=" " \
	--add-entry="Minute" \
	--add-entry="Hour" \
--add-entry="Day" \
--add-entry="Month" \
)
path=` cat /home/$(whoami)/unixproject/bsel.txt `
echo "$data * rsync -r $FILE $path >> /home/`whoami`/unixproject/log.txt" >> /var/spool/cron/crontabs/`whoami`
sudo service cron restart 







