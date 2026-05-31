#!/usr/bin/env bash

source scripts/utils.sh

startScript

SCRIPT_HOME="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

brew install htop
brew install jenv
brew install httpie
brew install npm

# CLI tools
brew install gh
brew install fd
brew install fzf
brew install ast-grep
brew install jq
brew install ripgrep
brew install ncdu

# Casks
brew install --cask ghostty
brew install --cask font-fira-code-nerd-font
brew install --cask font-inconsolata
brew install --cask font-inconsolata-dz-for-powerline
brew install --cask rectangle
brew install --cask zed
brew install --cask obsidian
brew install --cask logseq
