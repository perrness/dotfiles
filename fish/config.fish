alias vim="nvim"
alias k="kubectl"
alias ks="kubens"
alias kx="kubectx"
alias ls="exa --icons"
alias ll="exa --group --header --group-directories-first --long --icons --git"

# SSH stuff
eval (ssh-agent -c)
ssh-add --apple-use-keychain --apple-load-keychain  ~/.ssh/id_ed25519-2

# Fish settings
set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
