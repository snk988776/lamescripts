#!/bin/bash
echo "Enter the username :"
read user
function chk_priv()
{
        local priv
        #Below command checks if the user is added in the sudoer file with root / other special privilages(ex. execute update/backup commands).
        priv=`sudo cat /etc/sudoers | grep $user`
        if [ $? -eq 0 ]; then
                echo "$user has administrative access and his/her privilages are $priv"
        else
                echo "$user is not a root user"
        fi
}
if `cat /etc/passwd | grep -q "$user" > /dev/null 2>&1`; then
	chk_priv
else
	echo "$user does not exist, exiting.."
	exit 1
fi	
