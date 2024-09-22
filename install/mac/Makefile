MAC_HOMEBREW       := ${shell which brew}
MAC_PYENV          := ${shell which pyenv}
MAC_PYTHON_VERSION := 3.12.2

VSCODE_SETTING_DIR := ${HOME}/Library/Application\ Support/Code/User


############################################################
# install
############################################################
.PHONY: install/*

# homebrew
install/brew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

install/brew-packages: install/brew
	${MAC_HOMEBREW} bundle --file="config/homebrew/Brewfile"

# pyenv
install/python/mac:
	${MAC_PYENV} install ${MAC_PYTHON_VERSION}
	${MAC_PYENV} global ${MAC_PYTHON_VERSION}

# vscode
install/vscode-extensions:
	bash install/common/vscode.sh


############################################################
# setup
############################################################
.PHONY: setup/*

setup/mac:
	$(MAKE) install/brew-packages
	$(MAKE) install/python/mac
	$(MAKE) install/vscode-extensions
	bash install/link.sh