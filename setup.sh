#!/usr/bin/env bash

set -e

DOTFILES_ROOT=$(dirname "$0")
cd $DOTFILES_ROOT


info () {
  printf "[ \033[00;34m..\033[0m ] $1\n"
}
success () {
  printf "[ \033[00;32mOK\033[0m ] $1\n"
}

if test ! $(which brew); then
	info "Installing Homebrew...";
	yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	success "Homebrew was installed...";	
else
  	success "Homebrew is already installed...";
fi

# find all install scripts and run them iteratively
find . -name install.sh | while read installer ; do sh -c "${installer} $DOTFILES_ROOT"  ; done