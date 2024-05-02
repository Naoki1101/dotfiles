#!/bin/bash

if [ -e ~/Library/Application\ Support/Code/User ]; then
    cd ~/Library/Application\ Support/Code/User

    mv settings.json settings.json.bak
    mv keybindings.json keybindings.json.bak

    ln -is ~/dotfiles/vscode/settings.json
    ln -is ~/dotfiles/vscode/keybindings.json

    for extension in `cat ~/dotfiles/common/vscode/extensions.txt`; do
        code --install-extension $extension
    done
fi