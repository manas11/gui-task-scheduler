#!/bin/sh
FILE=`zenity --file-selection --title="Give the backup folder" --directory`
cd 
echo "$FILE" > /home/`whoami`/unixproject/bsel.txt 
sudo service cron restart

