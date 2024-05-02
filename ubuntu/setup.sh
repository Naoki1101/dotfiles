#!/bin/bash

# git
ln -sf "${PWD}/common/git/.gitconfig" "${HOME}"
ln -sf "${PWD}/common/git/.gitignore_global" "${HOME}"

# # xonsh
ln -sf "${PWD}/common/xonsh/.xonshrc" "${HOME}"

# zsh
ln -sf "${PWD}/ubuntu/bash/.zprofile" "${HOME}"

# vscode
bash ./common/vscode/setup.sh