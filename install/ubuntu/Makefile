############################################################
# install
############################################################
.PHONY: install/*

install/starship:
	curl -sS https://starship.rs/install.sh | sh

install/sheldon:
	cargo install sheldon

############################################################
# setup
############################################################
.PHONY: setup/*

setup/ubuntu:
	$(MAKE) install/starship
	$(MAKE) install/sheldon
	bash install/link.sh