#!/bin/bash
#======================================================================================
#                                
# Author  : Alex Bergmann
# License : Copyright (C) 2018 Alex
#
#======================================================================================

sudo pacman -S --noconfirm --needed conky

cd ~/.config

sudo cp /etc/conky/conky.conf .conkyrc