#!/bin/bash
############################
# .tmux_install.sh
# This script installs all configs
############################

# Tmux & plugins
if [ ! -d "${HOME}/.tmux/plugins/tpm" ]; then
    echo "Adding tmux alias"
    printf '\n# Tmux alias\nalias tmux="tmux -2"\n' >> ${HOME}/.bashrc
fi
