#!/bin/bash

BACKUPSIZE=$1
BACKUPSCRIPT=./backup_rpimage.sh
BACKUPNAME="test-$(hostname)-$(date +%Y%m%d%H%M).img"
BACKUPPATH=/mnt/nas/rpi-ci-monitoring/backup
#BACKUPPATH=./
BACKUP="$BACKUPPATH/$BACKUPNAME"

echo -e "Initiating full backup of size ${BACKUPSIZE}MB and\nlocation $BACKUP"
sleep 5
if [ -n "$BACKUPSIZE" ]; then
	$BACKUPSCRIPT start -c -z -s $BACKUPSIZE $BACKUP
else
	$BACKUPSCRIPT start -c -z $BACKUP
fi
