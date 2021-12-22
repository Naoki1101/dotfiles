# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# cuda
export PATH="/usr/local/cuda/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"

export LOCAL_ROOT="$HOME/.local"
export PATH="$LOCAL_ROOT/bin:$PATH"


# User specific environment and startup programs
alias x="xonsh"
x