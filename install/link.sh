#!/bin/bash
set -Eeuo pipefail
set -x

readonly CONFIG_DIR="$HOME/.config"

# -----------------------------
# git
mkdir -p "${CONFIG_DIR}/git"
ln -sf "${PWD}/config/git/.gitconfig" "${HOME}/.gitconfig"
ln -sf "${PWD}/config/git/.ignore" "${CONFIG_DIR}/git/.ignore"

# -----------------------------
# homebrew
if [ "$(uname -s)" == "Darwin" ]; then
    ln -sf "${PWD}/config/homebrew/Brewfile" "${HOME}/.Brewfile"
fi

# -----------------------------
# iterm2
if [ "$(uname -s)" == "Darwin" ]; then
    mkdir -p "${CONFIG_DIR}/iterm2"
    ln -sf "${PWD}/config/iterm2/custom.json" "${CONFIG_DIR}/iterm2/custom.json"
fi

# -----------------------------
# sheldon
mkdir -p "${CONFIG_DIR}/sheldon"
ln -sf "${PWD}/config/sheldon/plugins.toml" "${CONFIG_DIR}/sheldon/plugins.toml"

# -----------------------------
# starship
mkdir -p "${CONFIG_DIR}/starship"
ln -sf "${PWD}/config/starship/starship.toml" "${CONFIG_DIR}/starship/starship.toml"

# -----------------------------
# vscode
if [ "$(uname -s)" == "Darwin" ]; then
  readonly VSCODE_SETTING_DIR="${HOME}/Library/Application\ Support/Code/User"
else
  readonly VSCODE_SETTING_DIR="${CONFIG_DIR}/Code/User"
fi
if [ ! -d "${VSCODE_SETTING_DIR}" ]; then
    mkdir -p "${VSCODE_SETTING_DIR}"
fi
ln -sf "${PWD}/config/vscode/settings.json" "${VSCODE_SETTING_DIR}/settings.json"

# -----------------------------
# zsh
ln -sf "${PWD}/config/zsh/.zshrc" "${HOME}/.zshrc"