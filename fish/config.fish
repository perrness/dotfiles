alias vim="nvim"
alias k="kubectl"
alias ks="kubens"
alias kx="kubectx"
alias ls="exa --icons"
alias ll="exa --group --header --group-directories-first --long --icons --git"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
