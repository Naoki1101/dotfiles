#!/bin/bash

# dotfiles
for dotfiles in .?*; do
  case ${dotfiles} in
    ..)            continue ;;
    .git)          continue ;;
    .gitignore)    continue ;;
    *)             ln -sf "${PWD}/${dotfiles}" "${HOME}" ;;
  esac
done

# vscode
sh ./vscode/setup.sh