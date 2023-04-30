#! /bin/bash

cp ~/.vimrc .vimrc
cp ~/.tmux.conf .tmux.conf
cp -R ~/.config/nvim .
cp -R ~/.config/alacritty .
cp -R ~/.config/fish .
cp -R ~/.config/starship.toml starship.toml
cp -Rv ~/.local/bin .local/

echo "Update complete."
