#!/bin/bash
#======================================================================================
#                                
# Author  : Alex Bergmann
# License : Copyright (C) 2018 Alex
#
#======================================================================================

sudo pacman -S cinnamon
sudo pacman -S gdm
sudo systemctl enable gdm.service