#!/bin/bash
############################
# .vim_install.sh
# This script installs all configs
############################

# Vundle & vim plugins
if [ ! -d "${HOME}/.vim" ]; then
    echo "Installing Vundle"
    git clone https://github.com/VundleVim/Vundle.vim.git ${HOME}/.vim/bundle/Vundle.vim
    vim -E -u NONE -S ${HOME}/dotfiles/configs/vimrc +PluginInstall +qall

    # Install YouCompleteMe
    if [[ $(command cmake) ]] && [[ -d "${HOME}/.vim/bundle/YouCompleteMe" ]]; then
        cd ${HOME}/.vim/bundle/YouCompleteMe
        ./install.py --all
    else
        echo "------ CMake is missing or YCM wasn't selected, unable to install"
    fi
fi
