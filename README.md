# My dotfiles

## Requirements

Ensure `git` is installed.

## Clone the repository

First, clone to `$HOME` directory and `cd` into it.

```bash
git clone https://github.com/Avanta8/dotfiles.git "$HOME/dotfiles"
cd $HOME/dotfiles
```

Then initialise submodules.

```bash
git submodule update --init
```

## Install apt tools

```bash
./scripts/apttools.sh
```

This will ensure that `stow` is installed.

## Symlink using `stow`

This is a hack to get `stow` to remove existing files in the `$HOME` directory.
Use at own risk!\
Make sure you run this from inside the `dotfiles` directory.

```bash
mkdir ~/.config
stow . --adopt
git reset --hard
stow .
```

## Programs

Programs can be installed by

```bash
./scripts/programs.sh
```

Now you are finished!

## Selectively install programs

Programs can also be selectively installed. For example

```bash
./scripts/programs/blesh.sh
```

## How to use `stow`

To add a new file, create the file in the relevant path inside the `dotfiles`
directory. Then, run `stow .` inside the top level `dotfiles` directory.
