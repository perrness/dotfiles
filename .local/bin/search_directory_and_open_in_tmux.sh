#!/usr/bin/env bash

directory=$(find ~/repoes -type d -print -maxdepth 1 | fzf)
session_name=$(echo $directory | sed -e 's/.*\///g')
tmux new -s $session_name -c $directory
