#!/bin/bash
############################
# .install.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
############################

########## Variables

dir=~/dotfiles/configs                              # dotfiles directory
olddir=~/dotfiles_old                               # old dotfiles backup directory
files="bashrc npmrc tmux.conf vimrc bash_profile"   # list of files/folders to symlink in homedir

##########

########## Install addons
# Bash-it
if [ ! -d "~/.bash_it" ]; then
    echo "Installing Bash-it"
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh -s
fi

# Vundle & vim plugins
if [ ! -d "~/.vim" ]; then
    echo "Installing Vundle"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qal
fi

# Npm global dir
if [ ! -d "~/.npm-packages" ]; then
    echo "Redirecting Npm's globals"
    mkdir ~/.npm-packages
fi

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done
