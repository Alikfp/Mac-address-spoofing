#!/bin/bash

wifi_interface=$1
echo "Original Mac address config is: " 
echo $(ifconfig $wifi_interface |grep ether)
echo "New Mac address is: " 
new_mac_add=$(openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//')
sudo ifconfig en0 ether $new_mac_add
echo "Done!"