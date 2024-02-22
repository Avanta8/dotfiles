#!/usr/bin/env bash

command -v rustup >/dev/null 2>&1 && exit 0

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
