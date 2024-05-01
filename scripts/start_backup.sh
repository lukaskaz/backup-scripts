#!/bin/bash
BACKUPSIZE=$1
BACKUPSCRIPT=./backup_rpimage.sh
BACKUPNAME="$(hostname)-$(date +%Y%m%d%H%M).img"
BACKUPPATH=/mnt/nas/rpi-cluster/backup
BACKUP="$BACKUPPATH/$BACKUPNAME"

if [ -n "$BACKUPSIZE" ]; then
	echo -e "Initiating full backup of size ${BACKUPSIZE}MB and\nlocation $BACKUP"
	sleep 5
	$BACKUPSCRIPT start -c -z -s $BACKUPSIZE $BACKUP
else
	echo "Provide backup size in MB: ./$(basename $0) \$SIZE_MB"
fi

