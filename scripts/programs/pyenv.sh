if [ ! -d "$HOME/.pyenv/bin" ]; then
    curl https://pyenv.run | sh
    # Hacky
    export PYENV_ROOT="$HOME/.pyenv"
    [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
fi

# Optional build dependencies: https://devguide.python.org/getting-started/setup-building/#install-dependencies
sudo apt-get install build-essential gdb lcov pkg-config \
    libbz2-dev libffi-dev libgdbm-dev libgdbm-compat-dev liblzma-dev \
    libncurses5-dev libreadline6-dev libsqlite3-dev libssl-dev \
    lzma lzma-dev tk-dev uuid-dev zlib1g-dev -y

yes n | pyenv install 3
pyenv virtualenv 3 main
pyenv global main
