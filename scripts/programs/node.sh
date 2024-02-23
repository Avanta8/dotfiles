#!/usr/bin/env bash

if [ ! -f "$NVM_DIR/nvm.sh" ]; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
fi

if ! command -v node &>/dev/null; then
    source "$NVM_DIR/nvm.sh"
    nvm install --lts
fi
