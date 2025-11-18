alias vim="nvim"
alias k="kubectl"
alias kns="kubens"
alias kx="kubectx"
alias tf="terraform"
alias tff="terraform fmt -recursive"
alias python="/usr/local/bin/python3"

# Set kubernetes editor
export KUBE_EDITOR='nvim'

# Set work-gappynator-context
export GAPPYNATOR_CONTEXT='docker-desktop'

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
set -x PATH "/Users/Per-Richard.Naess/toolboxscripts" "$PATH"
set -gx PATH $PATH $HOME/.krew/bin

# Keybindings
bind \cf '~/repos/dotfiles/.local/bin/search_directory_and_open_in_tmux.sh'

# Load the current SDKMAN Java version
set -l sdk_java_home (bash -c 'source $HOME/.sdkman/bin/sdkman-init.sh >/dev/null 2>&1 && echo $JAVA_HOME')
if test -d "$sdk_java_home"
    set -x JAVA_HOME $sdk_java_home
    set -x PATH $JAVA_HOME/bin $PATH
end
