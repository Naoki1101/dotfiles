MAC_HOMEBREW       := ${shell which brew}
MAC_PYENV          := ${shell which pyenv}
MAC_PYTHON_VERSION := 3.11.8


############################################################
# install
############################################################
.PHONY: install/*

# https://brew.sh/
install/brew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

install/pyenv/mac:
	${MAC_HOMEBREW} install pyenv
	${MAC_PYENV} install ${MAC_PYTHON_VERSION}
	${MAC_PYENV} global ${MAC_PYTHON_VERSION}


############################################################
# setup
############################################################
.PHONY: setup/*

setup/mac: install/brew install/pyenv/mac
	bash mac/setup.sh