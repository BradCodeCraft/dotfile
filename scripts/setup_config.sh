#!/bin/bash

# Delete default dotfiles
if test -d $HOME/.config/i3; then
  rm -rf $HOME/.config/i3
fi

if test -d $HOME/.config/nvim; then
  rm -rf $HOME/.config/nvim
fi

if test -d $HOME/.config/kitty; then
  rm -rf $HOME/.config/kitty
fi

# Stow dotfiles
cd $HOME/dotfile && stow .
