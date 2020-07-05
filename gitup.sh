

#!/bin/sh
data=$(
zenity --forms --title="Schedule Time" \
	--text="Schedule time" \
	--separator=" " \
	--add-entry="Minute" \
	--add-entry="Hour" \
--add-entry="Day" \
--add-entry="Month" \
)


echo "$data * /home/`whoami`/unixproject/gitup1.sh >> /home/`whoami`/unixproject/log.txt" >> /var/spool/cron/crontabs/`whoami`
sudo service cron restart 







