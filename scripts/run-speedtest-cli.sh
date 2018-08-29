#!/bin/bash
#======================================================================================
#                                
# Author  : Alex Bergmann
# License : Copyright (C) 2018 Alex
#
#======================================================================================

# terminal speedtest
wget https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py -O /tmp/speedtest.py
chmod +x /tmp/speedtest.py
python /tmp/speedtest.py --share
# https://github.com/sivel/speedtest-cli

sleep 10



##################################################################################################################

echo "################################################################"
echo "###################    Speedtest          ######################"
echo "################################################################"