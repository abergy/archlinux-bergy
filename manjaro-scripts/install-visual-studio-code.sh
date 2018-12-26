#!/bin/bash
#======================================================================================
#                                
# Author  : Alex Bergmann
# License : Copyright (C) 2018 Alex
#
#======================================================================================

# https://linuxhint.com/install_visual_studio_code_arch_linux/

# git should be installed 

mkdir ~/tmp

cd ~/tmp/

git clone https://AUR.archlinux.org/visual-studio-code-bin.git

cd visual-studio-code-bin/

makepkg -s

sudo pacman -U visual-studio-code-bin-*.pkg.tar.xz

cd

cd 

rm -r ~/tmp
