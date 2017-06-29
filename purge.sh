#!/bin/bash

cd ~

# Uninstall 
~/dotfiles/uninstall.sh

# Remove remaining directories
echo "Removing remaining files"
rm -rf ~/dot*
