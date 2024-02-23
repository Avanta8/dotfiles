#!/usr/bin/env bash

run() {
    "$(dirname "$0")/programs/$1.sh"
}

run blesh

run node

run rust
run rust-utils

run bob
run nvim
