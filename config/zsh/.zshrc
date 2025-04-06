# homebrew
eval $(/opt/homebrew/bin/brew shellenv)

# starship
eval "$(starship init zsh)"

# sheldon
eval "$(sheldon source)"

# 既存コマンドの置き換え
alias cat='bat'
alias ls='eza --icons --long --time-style=long-iso --header'
alias grep='rg'
alias act='act --container-architecture linux/amd64'

# 新規追加
abbr -S ops='eval $(op signin)'
abbr -S ghbr='gh branch'
abbr -S ghdh='gh dash'
abbr -S ghp='gh poi'
abbr -S ghex='gh copilot explain'
abbr -S ghsg='gh copilot suggest'