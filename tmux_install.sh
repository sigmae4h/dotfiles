#!/bin/bash
############################
# .tmux_install.sh
# This script installs all configs
############################

# Tmux & plugins
if [ ! -d "~/.tmux" ]; then
    echo "Installing Tmux Plugin Manager (tpm)"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    ~/.tmux/plugins/tpm/scripts/install_plugins.sh
    echo "Adding tmux alias"
    printf '\n# Tmux alias\nalias tmux="tmux -2"\n' >> ~/.bashrc
fi
