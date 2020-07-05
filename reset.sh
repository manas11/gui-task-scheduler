#!/bin/sh

# You must place file "COPYING" in same folder of this script.
FILE=`dirname $0`/COPYING

zenity --text-info \
       --title="License" \
       --filename=$FILE \
       --checkbox="Continue"

 
case $? in
    0)
        crontab -r
        crontab -e
        # next step
	;;
    1)
        echo "No modification made"
	;;
    -1)
        echo "An unexpected error has occurred."
	;;
esac      




