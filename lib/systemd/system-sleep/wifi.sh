#!/bin/bash
# File: "/etc/pm/sleep.d/99wifi".

case $1/$2 in
    post/*)
	/sbin/rmmod iwlmvm iwlwifi
	/sbin/modprobe iwlwifi
        systemctl restart wpa_supplicant
	systemctl restart NetworkManager
	;;
esac
exit 0
