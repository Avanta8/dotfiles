#!/usr/bin/env bash

if ! command -v cargo >/dev/null 2>&1; then
    echo "rust is required"
    exit 1
fi

cargo install zoxide --locked
cargo install bat
cargo install exa
cargo install ripgrep
cargo install kondo
cargo install tlrc
cargo install lemmeknow
cargo install tokei
