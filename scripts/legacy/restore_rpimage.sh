#!/bin/bash

BACKUP=$1
SDCARD=$2

if [ -n "$BACKUP" -a -n "$SDCARD" ]; then
	dd bs=4M if=$BACKUP of=$SDCARD status=progress
else
	echo "Usage: ./$(basename $0) \$backup \$sdcard"
fi
