#!/bin/sh
FILE=`zenity --file-selection --title="Enter a local repo" --directory`
cd 
echo "$FILE" > /home/`whoami`/unixproject/select.txt 
sudo service cron restart

