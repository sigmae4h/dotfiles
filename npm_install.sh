#!/bin/bash
############################
# .npm_install.sh
# This script configures npm
############################

########## Variables
dir=${HOME}/dotfiles/configs    # dotfiles directory
olddir=${HOME}/dotfiles_old     # old dotfiles backup directory
files="npmrc"                   # list of files/folders to symlink in homedir
##########

# Npm global dir
if [ ! -d "${HOME}/.npm-packages" ]; then
    echo "Redirecting Npm's globals"
    mkdir ${HOME}/.npm-packages

    echo "Updating bashrc"
    printf '\n# use local .npm-packages for global installations\nNPM_PACKAGES="${HOME}/.npm-packages"\nPATH="$NPM_PACKAGES/bin:$PATH"\n\n# Unset manpath so we can inherit from /etc/manpath via the `manpath` command\nunset MANPATH # delete if you already modified MANPATH elsewhere in your config\nexport MANPATH="$NPM_PACKAGES/share/man:$(manpath)"\n' >> ${HOME}/.bashrc
fi

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
