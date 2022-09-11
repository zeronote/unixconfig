#!/bin/bash

if [[ -f ~/.vimrc ]]; then
    echo "backup current vimrc to ~/vimrc_back"
    cp ~/.vimrc ~/vimrc_back
fi

if [[ -f ~/.bashrc ]]; then
    echo "backup current bashrc to ~/bashrc_back"    
    cp ~/.bashrc ~/bashrc_back
fi

cp vimrc ~/.vimrc
cp bashrc ~/.bashrc
