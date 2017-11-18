#!/bin/bash
############################
# .vim_install.sh
# This script installs all configs
############################

# Vundle & vim plugins
if [ ! -d "~/.vim" ]; then
    echo "Installing Vundle"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim -E -u NONE -S ~/dotfiles/configs/vimrc +PluginInstall +qall

    # Install YouCompleteMe
    if [[ $(command cmake) ]] && [[ ! -d "~/.vim/bundle/YouCompleteMe" ]]; then
        cd ~/.vim/bundle/YouCompleteMe
        ./install.py --all
    else
        echo "------ CMake is missing: Unable to install YouCompleteMe"
    fi
fi
