#!/bin/bash

mkdir -p "$HOME/Programs"
cd "$HOME/Programs" || return
git clone https://aur.archlinux.org/yay.git
cd yay || return
makepkg -si
