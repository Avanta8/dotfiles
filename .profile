# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# # if running bash
# if [ -n "$BASH_VERSION" ]; then
#     # include .bashrc if it exists
#     if [ -f "$HOME/.bashrc" ]; then
# 	. "$HOME/.bashrc"
#     fi
# fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# .local/bin needs to go before rustup in PATH.

# Rustup
if [ -e "$HOME/.cargo/env" ]; then
    . "$HOME/.cargo/env"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Bob neovim
if [ -d "$HOME/.local/share/bob/nvim-bin" ]; then
    PATH="$HOME/.local/share/bob/nvim-bin:$PATH"
fi

if command -v nvim >/dev/null 2>&1; then
    export VISUAL=nvim
    export EDITOR="$VISUAL"
else
    export VISUAL=vim
    export EDITOR="$VISUAL"
fi
