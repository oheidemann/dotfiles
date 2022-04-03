#!/usr/bin/env bash

echo "install $(dirname "$0")"

DOTFILES_ROOT=$1

cd "$(dirname "$0")"
source ../scripts/utils.sh

link_file "$(pwd -P)/.gitconfig" ~/.gitconfig
