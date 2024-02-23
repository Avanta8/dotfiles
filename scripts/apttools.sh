#!/usr/bin/env bash

install() {
    for var in "$@"; do
        if dpkg -s $var >/dev/null 2>&1; then
            echo "$var exists"
        else
            sudo apt install $var
        fi
    done
}

install build-essential cmake
install unzip
install python3-pip
install xsel
install fzf
install duf
