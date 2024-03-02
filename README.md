# My dotfiles

## Requirements
Ensure `git` is installed.


## Installation
First, clone to `$HOME` directory and `cd` into it.

```
git clone https://github.com/Avanta8/dotfiles.git "$HOME/dotfiles"
cd $HOME/dotfiles
```

Then initialise submodules.
```
git submodule init
git submodule update
```

## Install apt tools
```
./scripts/apttools.sh
```

## Symlink using `stow`
This is a hack to get `stow` to remove existing files in the `$HOME` directory.
Use at own risk!
```
stow . --adopt
git reset --hard
stow .
```

## Programs
Programs can be installed by
```
./scripts/programs.sh
```

Now you are finished!


## Selectively install programs
Programs can also be selectively installed. For example

```
./scripts/programs/blesh.sh

```

