#!/bin/bash
#======================================================================================
#                                
# Author  : Alex Bergmann
# License : Copyright (C) 2018 Alex
#
#======================================================================================


# if you are in a base system with no xserver and desktop...
# this will install xserver

echo " Xserver setup"

sudo pacman -S xorg-server xorg-apps xorg-xinit xorg-twm xterm --noconfirm --needed

echo
echo "################################################################"
echo "choose virtualbox-guest-modules-arch in the next installation"
echo "################################################################"

sleep 2

sudo pacman -S virtualbox-guest-utils 

echo "################################################################"
echo "###################    xorg installed     ######################"
echo "################################################################"



