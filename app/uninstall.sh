#!/usr/bin/env bash
# v-hosts uninstall require root access
if [ "$(whoami)" != "root" ]
  then
    echo "If you want uninstall V-Hosts, please run the uninstall with root access"
    exit
fi

sudo rm -Rf /etc/v-hosts
sudo rm /usr/bin/v-hosts
sudo rm -- "$0"

echo "V-Hosts is now removed !"
