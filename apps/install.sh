#!/usr/bin/env bash

source scripts/utils.sh

startScript

SCRIPT_HOME="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

brew install htop
brew install jenv
brew install httpie

brew install --cask iterm2
brew install --cask homebrew/cask-fonts/font-inconsolata
brew install --cask homebrew/cask-fonts/font-inconsolata-dz-for-powerline
brew install --cask rectangle
