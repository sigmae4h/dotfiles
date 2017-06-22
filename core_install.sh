#!/bin/bash
############################
# .core_install.sh
# This script installs main configs
############################

cd ~/dotfiles

/bin/bash base_install.sh

########## Install addons
/bin/bash bash-it_install.sh
/bin/bash vim_install.sh
/bin/bash tmux_install.sh
