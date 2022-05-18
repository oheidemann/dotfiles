#! /usr/bin/env zsh

source scripts/utils.sh

startScript

brew install zsh
brew install zsh-completions
brew install zplug

SCRIPT_HOME="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
PREZTO_HOME="${ZDOTDIR:-$HOME}/.zprezto"

if [ !  -d "$PREZTO_HOME" ]; then
	info "Installing Prezto"
	git clone --recursive https://github.com/sorin-ionescu/prezto.git "$PREZTO_HOME"

	#use prezto defaults	
	link_file "$PREZTO_HOME/runcoms/zlogin" ~/.zlogin
	link_file "$PREZTO_HOME/runcoms/zlogout" ~/.zlogout
	link_file "$PREZTO_HOME/runcoms/zprofile" ~/.zprofile
	link_file "$PREZTO_HOME/runcoms/zshenv" ~/.zshenv
	
	#override prezto defaults
	link_file "$SCRIPT_HOME/zpreztorc" ~/.zpreztorc
	link_file "$SCRIPT_HOME/zshrc" ~/.zshrc
	link_file "$SCRIPT_HOME/zfunc" ~/.zfunc

	success "Prezto successfuly installed..."
else
	success "Prezto is already installed..."
	#zprezto-update
fi

