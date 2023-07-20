#!/bin/bash



if [[ ! -z "$1" ]]; then
    dest=$(basename "$1")
    cp "$1" ${dest#\.} 
    exit 0
fi

cp ~/.vimrc vimrc
cp ~/.bashrc bashrc
cp ~/.tmux.conf tmux.conf
