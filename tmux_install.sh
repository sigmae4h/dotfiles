#!/bin/bash
############################
# .tmux_install.sh
# This script installs all configs
############################

# Tmux & plugins
if [ ! -d "~/.tmux/plugins/tpm" ]; then
    echo "Installing Tmux Plugin Manager (tpm)"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm && ~/.tmux/plugins/tpm/bin/install_plugins
    echo "Adding tmux alias"
    printf '\n# Tmux alias\nalias tmux="tmux -2"\n' >> ~/.bashrc
fi
