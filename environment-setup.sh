#!bin/bash

bash scripts/setup/docker-setup.sh
bash scripts/setup/git-setup.sh
bash scripts/setup/swappiness-setup.sh

# optional
# bash scripts/setup/erlang-setup.sh
# bash scripts/setup/elixir-setup.sh
# bash scripts/setup/neovim-setup.sh
# bash scripts/setup/postgresql-setup.sh
# bash scripts/setup/zsh-setup.sh
