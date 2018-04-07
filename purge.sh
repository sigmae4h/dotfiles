#!/bin/bash
############################
# .purge.sh
# This script uninstalls all dotfiles and deletes the repo
############################

cd ${HOME}

# Uninstall
${HOME}/dotfiles/uninstall.sh

# Remove remaining directories
echo "Removing remaining files"
rm -rf ${HOME}/dot*
