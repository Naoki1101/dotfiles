# homebrew
eval $(/opt/homebrew/bin/brew shellenv)

# starship
eval "$(starship init zsh)"

# sheldon
eval "$(sheldon source)"

abbr -S cat='bat'
abbr -S ls='eza  --icons --long --time-style=long-iso --header'
abbr -S grep='rg'
abbr -S act='act --container-architecture linux/amd64'
abbr -S ops='eval $(op signin)'
