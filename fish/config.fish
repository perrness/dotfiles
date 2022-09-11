alias vim="nvim"
alias k="kubectl"
alias ks="kubens"
alias kx="kubectx"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
