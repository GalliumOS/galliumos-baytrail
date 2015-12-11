#!/bin/bash
# File: "/etc/pm/sleep.d/99wifi".

case $1/$2 in
    pre/*)
	/sbin/rmmod iwlwifi
	;;
    post/*)
	/sbin/modprobe iwlwifi
	systemctl restart NetworkManager
	;;
esac
exit 0
