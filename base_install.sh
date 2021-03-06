#!/bin/bash
############################
# .base_install.sh
# This script creates symlinks from the home directory to any desired dotfiles in ${HOME}/dotfiles
# http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
############################

########## Variables
dir=${HOME}/dotfiles/configs                                    # dotfiles directory
olddir=${HOME}/dotfiles_old                                     # old dotfiles backup directory
files="zshrc minttyrc tmux.conf vimrc gitconfig tern-project ctags gitignore_global"
                                                                # list of files/folders to symlink in homedir
##########

# create dotfiles_old in homedir
if [ ! -d $olddir ]; then
    echo "Creating $olddir for backup of any existing dotfiles in ${HOME}"
    mkdir -p $olddir
    echo "...done"
fi

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving $file from ${HOME} to $olddir"
    mv ${HOME}/.$file ${HOME}/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ${HOME}/.$file
done

# create bashrc and symlink bash_profile to it
touch ${HOME}/.bashrc
ln -s ${HOME}/.bashrc ${HOME}/.bash_profile

# Install oh-my-zsh
yes n | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
