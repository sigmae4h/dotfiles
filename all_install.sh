#!/bin/bash
############################
# .base_install.sh
# This script installs all configs
############################

cd ~/dotfiles

/bin/bash base_install.sh

########## Install addons
/bin/bash bash-it_install.sh
/bin/bash vim_install.sh
/bin/bash npm_install.sh
/bin/bash android_install.sh
