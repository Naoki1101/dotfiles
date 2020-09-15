# .bash_profile

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# User specific environment and startup programs
alias x="xonsh"
x