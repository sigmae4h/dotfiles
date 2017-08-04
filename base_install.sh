#!/bin/bash
############################
# .base_install.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
############################

########## Variables
dir=~/dotfiles/configs                              # dotfiles directory
olddir=~/dotfiles_old                               # old dotfiles backup directory
files="minttyrc tmux.conf vimrc gitconfig"          # list of files/folders to symlink in homedir
##########

# create dotfiles_old in homedir
if [ ! -d $olddir ]; then
    echo "Creating $olddir for backup of any existing dotfiles in ~"
    mkdir -p $olddir
    echo "...done"
fi

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
	echo "Moving $file from ~ to $olddir"
	mv ~/.$file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done

# create bashrc and symlink bash_profile to it
touch ~/.bashrc
ln -s ~/.bashrc ~/.bash_profile
