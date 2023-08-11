#! /bin/bash

ln -sf ~/repos/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/repos/dotfiles/starship.toml ~/.config/starship.toml
ln -sf ~/repos/dotfiles/nvim ~/.config
ln -sf ~/repos/dotfiles/fish ~/.config
ln -sf ~/repos/dotfiles/alacritty ~/.config
ln -sf ~/repos/dotfiles/.vimrc ~/.vimrc

echo "Symlinks Complete"
