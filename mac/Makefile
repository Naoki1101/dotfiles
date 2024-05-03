HOMEBREW       := ${shell which brew}
PYENV          := ${shell which pyenv}
PYTHON_VERSION := 3.11.8


############################################################
# install
############################################################
.PHONY: install/*

# https://brew.sh/
install/brew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

install/pyenv:
	${HOMEBREW} install pyenv
	${PYENV} install ${PYTHON_VERSION}
	${PYENV} global ${PYTHON_VERSION}


############################################################
# setup
############################################################
.PHONY: setup/*

setup/mac: install/brew install/pyenv
	bash mac/setup.sh