#!/usr/bin/env bash

find_directory() {
  directory=$(find ~/repoes -type d -print -maxdepth 1 | fzf)
  return_code="$?"
  if [ $return_code -ne 0 ]; then
    exit $return_code
  fi
  session_name=$(echo $directory | sed -e 's/.*\///g')
}

start_tmux_session() {
  if [ ! $TMUX ]; then
    tmux new -s $session_name -c $directory -d
    tmux attach -t $session_name
  else
    tmux new -s $session_name -c $directory -d
    tmux switch-client -t $session_name
  fi
}

find_directory
start_tmux_session
