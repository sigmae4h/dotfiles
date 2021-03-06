#!/bin/bash
############################
# .uninstall.sh
# This script uninstalls all dotfiles
############################

cd ${HOME}

# Uninstall bash-it
echo "Uninstalling bash-it"
${HOME}/.bash_it/uninstall.sh -s

# Uninstall oh-my-zsh
echo "Uninstalling oh-my-zsh"
chmod +x ${HOME}/.oh-my-zsh/tools/uninstall.sh
yes | ${HOME}/.oh-my-zsh/tools/uninstall.sh

# Remove symlinks and created directories
echo "Removing symlinks and created directories"
rm -rf ${HOME}/.bash* ${HOME}/.vim* ${HOME}/.npm-packages ${HOME}/.tmux* ${HOME}/.npmrc ${HOME}/.minttyrc ${HOME}/.git* ${HOME}/.tern-project ${HOME}/.ctags ${HOME}/.zshrc

# Restore old dotfiles
echo "Restoring old dotfiles"
mv ${HOME}/dotfiles_old/* ${HOME}/
rm -rf ${HOME}/dotfiles_old
