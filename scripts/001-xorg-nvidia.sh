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

sudo pacman -S xf86-video-nouveau --noconfirm --needed

echo "################################################################"
echo "###################    xorg installed     ######################"
echo "################################################################"



