#!/usr/bin/env bash

test -f "$HOME/.local/share/blesh/ble.sh" && exit 0

git clone --recursive --depth 1 --shallow-submodules https://github.com/akinomyoga/ble.sh.git
make -C ble.sh install PREFIX=~/.local
rm -rf ble.sh
