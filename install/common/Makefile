############################################################
# install
############################################################
.PHONY: install/*

# ----------------------------------------------------------
# gh
install/gh-completion:
	bash install/common/command/gh_completion.sh

install/gh-extensions:
	bash install/common/command/gh_extension.sh


# ----------------------------------------------------------
# mise
install/mise:
	curl https://mise.run | sh

install/mise-tools: install/mise
	mise install -y


############################################################
# setup
############################################################
setup/common:
	$(MAKE) install/gh-completion
	$(MAKE) install/gh-extensions
	$(MAKE) install/mise-tools