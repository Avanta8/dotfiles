#!/usr/bin/env bash

if [ ! -f "$NVM_DIR/nvm.sh" ]; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
    source "$HOME/.bash_profile"
fi

if ! command -v node >/dev/null 2>&1; then
    source "$NVM_DIR/nvm.sh"
    nvm install --lts
    nvm use --lts
fi
