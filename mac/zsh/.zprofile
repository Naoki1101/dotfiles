# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

export LOCAL_ROOT="$HOME/.local"
export PATH="$LOCAL_ROOT/bin:$PATH"

# User specific environment and startup programs
alias x="xonsh"
x