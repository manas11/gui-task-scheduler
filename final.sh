#!/bin/sh

a=$( zenity --list --width=500 --height=500 \
  --title="Choose the programs you want schedule" \
  --column="Program list" --column="Description" \
    1 "Schedule an alarm" \
    2 "Upload files to google drive" \
    3 "Commit your repository to Github" \
    4 "Backup your home folder" \
    5 "Run your custom script" \
    6 "To change your default local repo" \
    7 "To Change your default Backup Folder" \
    8 "View custom output" \
    9 "Check your history" \
    10 "Erase all your scheduled tasks" \ )

case $a in
	1) echo "running alarm"
	/home/`whoami`/unixproject/alarm.sh
	;;
	2) echo "uploading to google drive"
        /home/`whoami`/unixproject/googled.sh
	;;
	3) echo "github"
	 /home/`whoami`/unixproject/gitup.sh
	;;
	4) echo "backup"
	echo "Backing up folder"
        /home/`whoami`/unixproject/backup.sh
	;;
	5)
	echo "running custom script"
	/home/`whoami`/unixproject/custom.sh
	;;
        6)
	echo "Selecting local repo"
	/home/`whoami`/unixproject/select.sh
	;;
	7)
	echo "Selecting default Backup folder"
	/home/`whoami`/unixproject/backsel.sh
	;;
        8)
	cat /home/`whoami`/unixproject/custom.txt
	;;
	9)
	cat /home/`whoami`/unixproject/log.txt
	;;
        10)
	echo "Erasing all your scheduled tasks"
	/home/`whoami`/unixproject/reset.sh
	;;
	*) echo "error"
	;;
esac 
	
