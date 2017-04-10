#!/bin/bash
############################
# .android_install.sh
# This script installs android configs
############################

printf '\n# Enable android development\nexport ANDROID_HOME=/opt/android-sdk\nexport PATH=${PATH}:/opt/android-sdk/tools:/opt/android-sdk/build-tools\n' >> ~/.bashrc
