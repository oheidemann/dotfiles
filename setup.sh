#!/usr/bin/env bash


set -e

DOTFILES_ROOT=$(pwd -P)

# find the installers and run them iteratively
find . -name install.sh | while read installer ; do sh -c "${installer} $DOTFILES_ROOT"  ; done