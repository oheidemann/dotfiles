#!/usr/bin/env bash

source scripts/utils.sh

startScript
SCRIPT_HOME="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

if test ! $(which git); then
	brew install git
	link_file "$SCRIPT_HOME/.gitconfig" ~/.gitconfig
fi