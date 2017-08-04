#!/bin/bash
############################
# .bash-it_install.sh
# This script installs bash-it
############################

# Bash-it
if [ ! -d "~/.bash_it" ]; then
    echo "Installing Bash-it"
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh -s
    echo "Adding config for pairs"
    printf '\n# Enable pairs for bash-it\nexport SCM_GIT_SHOW_CURRENT_USER=true\n' >> ~/.bashrc
fi
