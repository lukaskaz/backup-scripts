#!/bin/bash

pv -tpreb /mnt/nas/rpi-cluster/backup/rpinode3-202212190051.img | gzip > /mnt/nas/rpi-cluster/backup/rpinode3-202212190051.img.gz.tmp
