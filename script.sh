#!/bin/sh
ping -c 1 -w 1 -q SERVER_IP >/dev/null
status=$?
if [ $status -ne 0 ]
then
/usr/sbin/etherwake XX:XX:XX:XX:XX:XX
sleep 82 # this is my server startup time you should tweak this value too
fi
echo "-fstype=cifs,username=USERNAME,password=P@SSW0RD ://SERVER_IP/SMB_FOLDER"
