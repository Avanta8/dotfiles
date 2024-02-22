#!/usr/bin/env bash

if ! command -v bob >/dev/null 2>&1; then
    echo "bob is required"
    exit 1
fi

command -v nvim >/dev/null 2>&1 && exit 0

bob install stable
