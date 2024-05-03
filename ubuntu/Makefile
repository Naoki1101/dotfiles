UBUNTU_PYENV          := ${HOME}/.pyenv/bin/pyenv
UBUNTU_PYTHON_VERSION := 3.11.8


############################################################
# install
############################################################
.PHONY: install/*

install/pyenv/ubuntu:
	sudo apt update
	sudo apt install build-essential libffi-dev libssl-dev zlib1g-dev liblzma-dev libbz2-dev \
	  libreadline-dev libsqlite3-dev libopencv-dev tk-dev git
	git clone https://github.com/pyenv/pyenv.git ~/.pyenv
	${UBUNTU_PYENV} install ${UBUNTU_PYTHON_VERSION}
	${UBUNTU_PYENV} global ${UBUNTU_PYTHON_VERSION}


############################################################
# setup
############################################################
.PHONY: setup/*

setup/ubntu: install/pyenv/ubuntu
	bash mac/setup.sh