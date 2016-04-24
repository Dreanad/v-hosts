# v-hosts install require root access
if [ "$(whoami)" != "root" ]
  then
    echo "If you want install V-Hosts, please run the install with root access"
    exit
fi

sudo mkdir /etc/v-hosts
sudo cp app/conf/* /etc/v-hosts
sudo cp app/v-hosts /usr/bin/
sudo cp app/uninstall.sh /etc/v-hosts/

echo "V-Hosts is now installed !"
