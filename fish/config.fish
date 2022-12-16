alias vim="nvim"
alias k="kubectl"
alias kns="kubens"
alias kx="kubectx"
alias ls="exa --icons"
alias ll="exa --group --header --group-directories-first --long --icons --git"
alias tf="terraform"
alias tff="terraform fmt -recursive"

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
