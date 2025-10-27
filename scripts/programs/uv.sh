#!/usr/bin/env bash

curl -LsSf https://astral.sh/uv/install.sh | sh

uv python install --default

# use `uv init --package package_name` to initialie a package
