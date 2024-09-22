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

############################################################
# setup
############################################################
.PHONY: setup/*

setup/mac: setup/common
	$(MAKE) install/brew-packages
	bash install/link.sh