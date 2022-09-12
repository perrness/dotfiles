#! /bin/bash

cp .vimrc ~/.vimrc
cp .zshrc ~/.zshrc
cp .tmux.conf ~/.tmux.conf
cp starship.toml ~/.config/starship.toml
cp -R nvim ~/.config
cp -R fish ~/.config
cp -R alacritty ~/.config

echo "Installation Complete"
