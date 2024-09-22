MAC_HOMEBREW       := ${shell which brew}
MAC_PYTHON_VERSION := 3.12.2

VSCODE_SETTING_DIR := ${HOME}/Library/Application\ Support/Code/User

include install/common/Makefile


############################################################
# install
############################################################
.PHONY: install/*

# homebrew
install/brew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

install/brew-packages: install/brew
	${MAC_HOMEBREW} bundle --file="config/homebrew/Brewfile"

install/vscode-extensions:
	bash install/common/command/vscode.sh

############################################################
# setup
############################################################
.PHONY: setup/*

setup/mac:
	$(MAKE) setup/common
	$(MAKE) install/brew-packages
	$(MAKE) install/vscode-extensions
	bash install/link.sh