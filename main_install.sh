#!/bin/bash
############################
# .main_install.sh
# This script installs main configs
############################

cd ~/dotfiles

/bin/bash base_install.sh

########## Install addons
#/bin/bash bash-it_install.sh
/bin/bash vim_install.sh
/bin/bash tmux_install.sh

# Add specific configs to bashrc
if [ ! -d "~/.bashrc" ]; then
    echo "Setting default editor to vim"
    printf '\n# Set default editor\nexport EDITOR=vim\n' >> ~/.bashrc
fi
