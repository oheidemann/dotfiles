#! /usr/bin/env zsh

source scripts/utils.sh

startScript

# Ghostty itself is installed as a cask in apps/install.sh.

SCRIPT_HOME="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# Ghostty terminal config
mkdir -p ~/.config/ghostty
link_file "$SCRIPT_HOME/config" ~/.config/ghostty/config

success "ghostty configured..."
