#!/usr/bin/env bash

install() {
    for var in "$@"; do
        if dpkg -s $var >/dev/null 2>&1; then
            echo "$var exists"
        else
            sudo apt install $var -y
        fi
    done
}

sudo apt update && sudo apt upgrade

install stow
install build-essential cmake
install unzip htop
install libssl-dev
install python3-pip
install xsel
install fzf
install duf ncdu
install jq
