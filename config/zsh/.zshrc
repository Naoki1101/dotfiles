# homebrew
eval $(/opt/homebrew/bin/brew shellenv)

# starship
eval "$(starship init zsh)"

# sheldon
eval "$(sheldon source)"

alias ls='eza  --icons --long --time-style=long-iso --header'
alias grep='rg'