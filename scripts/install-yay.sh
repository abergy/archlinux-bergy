#!/bin/bash
#======================================================================================
#                                
# Author  : Alex Bergmann
# License : Copyright (C) 2018 Alex
#
#======================================================================================

mkdir ~/tmp

cd ~/tmp/

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

cd

cd 

rm -r ~/tmp
