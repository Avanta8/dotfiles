#!/usr/bin/env bash

run() {
    source "$HOME/.bash_profile"
    "$(dirname "$0")/programs/$1.sh"
}

run blesh

run lazygit

run node
run pyenv

run rust
run rust-utils

run bob
run nvim
