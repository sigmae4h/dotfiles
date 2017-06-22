#!/bin/bash

cd ~

# Uninstall bash-it
echo "Uninstalling bash-it"
~/.bash_it/uninstall.sh -s

# Remove symlinks and created directories
echo "Removing symlinks and created directories"
rm -rf ~/.bash* ~/.vim* ~/.npm-packages ~/.tmux* ~/.npmrc ~/.minttyrc 

# Restore old dotfiles
echo "Restoring old dotfiles"
mv ~/dotfiles_old/* ~/

# Remove remaining directories
echo "Removing remaining files"
rm -rf ~/dot*
