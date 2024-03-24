#!/usr/bin/env bash

run() {
    source "$HOME/.bash_profile"
    "$(dirname "$0")/programs/$1.sh"
}

run blesh

run node

run rust
run rust-utils

run lazygit

rust pyenv

run bob
run nvim
