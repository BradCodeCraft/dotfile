#!/bin/bash

#  _ _____
# (_)___ /_      ___ __ ___
# | | |_ \ \ /\ / / '_ ` _ \
# | |___) \ V  V /| | | | | |
# |_|____/ \_/\_/ |_| |_| |_|

echo "Installing packages"
. $HOME/dotfile/scripts/install_packages.sh

echo "Installing yay"
. $HOME/dotfile/scripts/install_yay.sh

echo "Setting up Git"
. $HOME/dotfile/scripts/setup_git.sh

echo "Setting up config"
. $HOME/dotfile/scripts/setup_config.sh
