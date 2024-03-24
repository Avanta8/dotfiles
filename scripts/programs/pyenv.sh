if [ ! -d "$HOME/.pyenv/bin" ]; then
    curl https://pyenv.run | sh
    export PYENV_ROOT="$HOME/.pyenv"
    [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
fi

yes n | pyenv install 3
pyenv virtualenv 3 main
pyenv global main
