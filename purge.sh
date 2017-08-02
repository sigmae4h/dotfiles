#!/bin/bash
############################
# .purge.sh
# This script uninstalls all dotfiles and deletes the repo
############################

cd ~

# Uninstall 
~/dotfiles/uninstall.sh

# Remove remaining directories
echo "Removing remaining files"
rm -rf ~/dot*
