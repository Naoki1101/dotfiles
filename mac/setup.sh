#!/bin/bash

# git
ln -sf "${PWD}/common/git/.gitconfig" "${HOME}"
ln -sf "${PWD}/common/git/.gitignore_global" "${HOME}"

# # xonsh
ln -sf "${PWD}/common/xonsh/.xonshrc" "${HOME}"

# zsh
ln -sf "${PWD}/mac/zsh/.zprofile" "${HOME}"

# vscode
if [ -e ~/Library/Application\ Support/Code/User ]; then
    cd ~/Library/Application\ Support/Code/User

    mv settings.json settings.json.bak
    mv keybindings.json keybindings.json.bak

    ln -is ~/dotfiles/common/vscode/settings.json
    ln -is ~/dotfiles/common/vscode/keybindings.json

    for extension in `cat ~/dotfiles/common/vscode/extensions.txt`; do
        code --install-extension $extension
    done
fi
