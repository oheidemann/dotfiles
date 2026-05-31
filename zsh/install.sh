#! /usr/bin/env zsh

source scripts/utils.sh

startScript

brew install zsh
brew install zsh-completions
brew install antidote
brew install starship

SCRIPT_HOME="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# Symlink shell config. antidote loads plugins listed in zsh_plugins.txt
# (Zephyr supplies the Prezto-equivalent core modules) — no framework to clone.
link_file "$SCRIPT_HOME/zshrc" ~/.zshrc
link_file "$SCRIPT_HOME/zsh_plugins.txt" ~/.zsh_plugins.txt
link_file "$SCRIPT_HOME/zfunc" ~/.zfunc

# starship prompt config
mkdir -p ~/.config
link_file "$SCRIPT_HOME/starship.toml" ~/.config/starship.toml

success "zsh + antidote configured..."
