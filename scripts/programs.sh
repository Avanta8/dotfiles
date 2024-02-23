#!/usr/bin/env bash

run() {
    "$(dirname "$0")/programs/$1.sh"
}

run blesh

run rust

run rust-utils
run starship
run bob
run zellij

run nvim
