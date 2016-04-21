#!/bin/bash

case $1/$2 in
    post/*)
        /sbin/rmmod iwlmvm iwlwifi mac80211 cfg80211
	/sbin/modprobe iwlwifi
	systemctl restart NetworkManager
	;;
esac
exit 0
