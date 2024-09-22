#!/bin/bash

for extension in `cat ${PWD}/config/vscode/extensions.txt`; do
    code --install-extension $extension
done
