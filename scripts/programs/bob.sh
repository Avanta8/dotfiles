#!/usr/bin/env bash

if ! command -v cargo >/dev/null 2>&1; then
    echo "rust is required"
    exit 1
fi

command -v bob >/dev/null 2>&1 && exit 0

cargo install bob-nvim
