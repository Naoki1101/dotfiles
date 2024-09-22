# homebrew
eval $(/opt/homebrew/bin/brew shellenv)

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

export LOCAL_ROOT="$HOME/.local"
export PATH="$LOCAL_ROOT/bin:$PATH"

export PATH="/usr/local/bin:$PATH"

# starship
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

# sheldon
eval "$(sheldon source)"