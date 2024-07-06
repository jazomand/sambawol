# sambawol
Wake your samba server

This script activate autofs on your ubuntu(maybe debian?) server and will mount your smb shared folder into /mnt/autofs/XXX (XXX is an example, can be any folder name and actually this is passed as a parameter to the script in case you want to expand functionality).

If the server is down it will try to wake it using a WOL magic packet and will wait until is online and will mount and resume any operation.

## How to use
Every command is currently hardcoded into the scripts. 
You need to replace your smb server MAC address (XX:XX:XX:XX:XX:XX), SERVER_IP, SMB_FOLDER, USERNAME and P@SSW0RD on the script.sh file.
After thats done, just run install.sh

## (Optional)
Replace SERVER_IP, USERNAME and P@SSW0RD to use the shutdown (for convenience/testing only and not needed by the install script).