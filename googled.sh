#!/bin/sh
FILE=`zenity --file-selection --title="Select a File"`

data=$(
zenity --forms --title="Schedule Time" \
	--text="Schedule time" \
	--separator=" " \
	--add-entry="Minute" \
	--add-entry="Hour" \
--add-entry="Day" \
--add-entry="Month" \
)




echo "$data * /home/`whoami`/unixproject/gdrive upload $FILE >> /home/`whoami`/unixproject/log.txt" >> /var/spool/cron/crontabs/`whoami`
sudo service cron restart 







