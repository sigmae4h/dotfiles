#!/bin/bash
############################
# .all_install.sh
# This script installs all configs
############################

cd ${HOME}/dotfiles

/bin/bash base_install.sh

########## Install addons
/bin/bash main_install.sh
/bin/bash npm_install.sh
/bin/bash android_install.sh
