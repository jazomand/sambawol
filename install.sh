#!/bin/bash
apt update
apt install etherwake -y
apt install autofs -y
apt install cifs-utils -y
mkdir /mnt/autofs/
grep -q "nas" /etc/auto.master; [ $? -eq 0 ] && echo "nas entry on auto.master already exists (skipping)" || echo -e "/mnt/autofs /etc/auto.nas --timeout=82 browse" >> /etc/auto.master
cp ./script.sh /etc/auto.nas
chmod 0750 /etc/auto.nas
service autofs restart
