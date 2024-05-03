PIP            := ${HOME}/.pyenv/versions/${PYENV_VERSION}/bin/pip

include mac/Makefile
include ubuntu/Makefile


############################################################
# install
############################################################
.PHONY: install/*

install/xonsh:
	${PIP} install xonsh
	${PIP} install prompt_toolkit
	${PIP} install xontrib-fzf-widgets


############################################################
# setup
############################################################
.PHONY: setup/*

mac: setup/mac install/xonsh
ubuntu: setup/ubuntu install/xonsh
