#!/usr/bin/env bash

find_directory() {
  directory=$(find ~/repoes -type d -print -maxdepth 1 | fzf)
  return_code="$?"
  if [ $return_code -ne 0 ]; then
    exit $return_code
  fi
  session_name=$(echo $directory | sed -e 's/.*\///g')
}

start_new_tmux() {
  tmux new -s $session_name -c $directory -d
}

switch_tmux_client() {
  tmux switch-client -t $session_name
}

attach_tmux_client() {
  tmux attach -t $session_name
}

start_tmux_session() {
  tmux has-session -t $session_name 2>/dev/null

  if [ $? -eq 0 ]; then
    if [ ! $TMUX ]; then
      attach_tmux_client
    else
      switch_tmux_client
    fi
  else
    if [ ! $TMUX ]; then
      start_new_tmux
      attach_tmux_client
    else
      start_new_tmux
      switch_tmux_client
    fi
  fi
}

find_directory
start_tmux_session
