#!/usr/bin/env bash

if ! command -v cargo >/dev/null 2>&1; then
    echo "rust is required"
    exit 1
fi

cargo install ripgrep fd-find
cargo install bat
cargo install exa

cargo install zoxide --locked
cargo install starship --locked
cargo install zellij --locked

cargo install kondo
cargo install tlrc
cargo install lemmeknow
cargo install tokei
