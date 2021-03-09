#!bin/bash

if [ ! "`whoami`" = "root" ]
then
    echo "Use sudo to run this script"
    exit 1
fi

echo "Ranking server list for optimal performance"
pacman-mirrors --fasttrack

echo "Updating packages before install"
pacman -Syyu

bash scripts/pacman/base-devel-install.sh
bash scripts/pacman/cmake-install.sh
bash scripts/pacman/ctags-install.sh
bash scripts/pacman/docker-install.sh
bash scripts/pacman/pamac-install.sh
bash scripts/pacman/zsh-install.sh
bash scripts/pacman/oh-my-zsh-install.sh
bash scripts/pacman/composer-install.sh
bash scripts/pacman/gh-cli-install.sh
bash scripts/pacman/nvm-install.sh

echo "changing to zsh shell"
chsh -s /usr/bin/zsh

# disabled session
# bash scripts/pacman/erlang-dependencies-install.sh
bash scripts/pacman/flatpak-install.sh
bash scripts/pacman/yay-install.sh
bash scripts/pacman/steam-install.sh
bash scripts/pacman/fira-code-install.sh
bash setup/add_stevenhosts.sh
