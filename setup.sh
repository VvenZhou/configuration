#!/usr/bin/bash

mv ~/.tmux.conf ~/.tmux.conf.backup
mv ~/.bashrc ~/.bashrc.backup
mv ~/.vimrc ~/.vimrc.backup

cp tmux.conf ~/.tmux.conf
cp bashrc ~/.bashrc
cp vimrc ~/.vimrc

# Nvim configuration files.
cp -r nvim ~/.config/

# mkdir ~/.config/alacritty
# cp alacritty.yml ~/.config/alacritty/alacritty.yml
