PYENV          := ${HOME}/.pyenv/bin/pyenv
PYTHON_VERSION := 3.11.8


############################################################
# install
############################################################
.PHONY: install/*

install/pyenv:
	sudo apt update
	sudo apt install build-essential libffi-dev libssl-dev zlib1g-dev liblzma-dev libbz2-dev \
	  libreadline-dev libsqlite3-dev libopencv-dev tk-dev git
	git clone https://github.com/pyenv/pyenv.git ~/.pyenv
	${PYENV} install ${PYTHON_VERSION}
	${PYENV} global ${PYTHON_VERSION}


############################################################
# setup
############################################################
.PHONY: setup/*

setup/ubntu: install/pyenv
	bash mac/setup.sh