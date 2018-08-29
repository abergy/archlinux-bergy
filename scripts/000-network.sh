#!/bin/bash
#======================================================================================
#                                
# Author  : Alex Bergmann
# License : Copyright (C) 2018 Alex
#
#======================================================================================

sudo pacman -S net-tools
sudo pacman -S network-manager-applet

sudo systemctl stop dhcpcd@ens33.service
sudo systemctl disable dhcpcd@ens33.service
sudo systemctl stop dhcpcd.service
sudo systemctl disable dhcpcd.service

sudo systemctl start NetworkManager
sudo systemctl enable NetworkManager