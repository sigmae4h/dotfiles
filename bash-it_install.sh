#!/bin/bash
############################
# .bash-it_install.sh
# This script installs bash-it
############################

# Bash-it
if [ ! -d "${HOME}/.bash_it" ]; then
    echo "Installing Bash-it"
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ${HOME}/.bash_it
    ${HOME}/.bash_it/install.sh -s
    echo "Adding config for pairs"
    printf '\n# Enable pairs for bash-it\nexport SCM_GIT_SHOW_CURRENT_USER=true\n' >> ${HOME}/.bashrc
    echo "Adding vi editing mode"
    printf '\n# Set vi editing mode\nset -o vi\n' >> ${HOME}/.bashrc
fi
