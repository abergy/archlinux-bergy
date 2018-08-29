#!/bin/bash
#======================================================================================
#                                
# Author  : Alex Bergmann
# License : Copyright (C) 2018 Alex
#
#======================================================================================

#https://www.ostechnix.com/install-pacaur-arch-linux/

#sudo pacman -S expac yajl --noconfirm

mkdir ~/tmp

cd tmp

curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=cower

makepkg -i PKGBUILD --noconfirm

curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=pacaur

makepkg -i PKGBUILD --noconfirm

cd 

rm -r ~/tmp
