############################################################
# install
############################################################
.PHONY: install/*

# ----------------------------------------------------------
# gh
install/gh-extensions:
	bash install/common/command/gh_extension.sh


# ----------------------------------------------------------
# mise
install/mise:
	curl https://mise.run | sh

install/mise-tools: install/mise
	mise install -y


# ----------------------------------------------------------
# vscode
install/vscode-extensions:
	bash install/common/command/vscode.sh


############################################################
# setup
############################################################
setup/common:
	$(MAKE) install/gh-extensions
	$(MAKE) install/mise-tools
	$(MAKE) install/vscode-extensions