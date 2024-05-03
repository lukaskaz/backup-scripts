#!/bin/bash

if [ "$EUID" -eq 0 ]; then raspi-config --expand-rootfs
else echo "Please run as root"
fi

