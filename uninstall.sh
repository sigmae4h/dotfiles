#!/bin/bash
############################
# .uninstall.sh
# This script uninstalls all dotfiles
############################

cd ~

# Uninstall bash-it
echo "Uninstalling bash-it"
~/.bash_it/uninstall.sh -s

# Remove symlinks and created directories
echo "Removing symlinks and created directories"
rm -rf ~/.bash* ~/.vim* ~/.npm-packages ~/.tmux* ~/.npmrc ~/.minttyrc ~/.gitconfig

# Restore old dotfiles
echo "Restoring old dotfiles"
mv ~/dotfiles_old/* ~/
rm -rf ~/dotfiles_old
