if [ ! -d "$HOME/.pyenv/bin" ]; then
    curl https://pyenv.run | sh
    source "$HOME/.bash_profile"
fi

yes n | pyenv install 3
pyenv virtualenv 3 main
pyenv global main
