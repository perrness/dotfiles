alias vim="nvim"
alias k="kubectl"
alias kns="kubens"
alias kx="kubectx"
alias ls="exa --icons"
alias ll="exa --group --header --group-directories-first --long --icons --git"
alias tf="terraform"
alias tff="terraform fmt -recursive"
alias python="/usr/local/bin/python3"

# SSH stuff
eval (ssh-agent -c)
ssh-add --apple-use-keychain --apple-load-keychain  ~/.ssh/id_ed25519-2

# Set kubernetes editor
export KUBE_EDITOR='nvim'

# Fish settings
set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/pernaess/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/pernaess/Downloads/google-cloud-sdk/path.fish.inc'; end

# Setting PATH for Python 3.10
# The original version is saved in /Users/pernaess/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.10/bin" "$PATH"

# Keybindings
bind \cf '~/repos/dotfiles/.local/bin/search_directory_and_open_in_tmux.sh'
