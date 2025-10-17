#! /bin/bash

cp .vimrc ~/.vimrc
cp .zshrc ~/.zshrc
cp .tmux.conf ~/.tmux.conf
cp starship.toml ~/.config/starship.toml
cp -Rv nvim ~/.config
cp -Rv fish ~/.config
cp -Rv alacritty ~/.config
cp -Rv .local/bin ~/.local/
cp ghostty/config ~/.config/ghostty/config

echo "Installation Complete"
