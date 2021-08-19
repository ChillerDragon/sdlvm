#!/bin/bash

function setup_env() {
	local version
	export PATH="$PATH:$HOME/.sdlvm/bin/"
	if [ ! -f ~/.sdlvm/version ]
	then
		return
	fi
	version="$(cat ~/.sdlvm/version)"
	if [ "$version" == "" ]
	then
		return
	elif [ ! -d ~/.sdlvm/versions/"$version" ]
	then
		return
	fi
	export PKG_CONFIG_PATH="$HOME/.sdlvm/versions/$version"
	export LD_LIBRARY_PATH="$HOME/.sdlvm/versions/$version"
}

setup_env

