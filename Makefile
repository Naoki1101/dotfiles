
HOMEBREW       := /opt/homebrew/bin/brew
PYENV          := ${shell which pyenv}
PYTHON_VERSION := 3.11.8
PYTHON         := ${HOME}/.pyenv/versions/${PYTHON_VERSION}/bin/python
PIP            := ${HOME}/.pyenv/versions/${PYTHON_VERSION}/bin/pip


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

install/xonsh:
	${PIP} install xonsh
	${PIP} install prompt_toolkit
	${PIP} install xontrib-fzf-widgets


############################################################
# setup
############################################################
.PHONY: setup/*

setup/mac: install/brew install/pyenv install/xonsh
	bash mac/setup.sh

setup/ubuntu:
	bash ubuntu/setup.sh