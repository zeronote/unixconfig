#!/bin/bash

# uncomment for testing
#HOME="/tmp"

backup() {
    filepath="$HOME/$1"
    now=$(date +"%Y%m%d_%H%M%S")
    if [[ -f "${filepath}" ]]; then
        backupfile="${filepath}"_back_"${now}"
        cp "${filepath}" "${backupfile}"
        echo "existing ${filepath} saved to ${backupfile}"
    fi
}

copy_hidden_conf() {
    filename="$1"
    cp "${filename}" $HOME/."${filename}"
    echo "${filename}" copied to $HOME/."${filename}"
}

backup ".vimrc"
backup ".bashrc"
backup ".tmux.conf"

copy_hidden_conf "vimrc"
copy_hidden_conf "bashrc"
copy_hidden_conf "tmux.conf"
