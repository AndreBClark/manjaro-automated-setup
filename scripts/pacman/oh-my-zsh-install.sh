#!bin/bash

if [ ! "`whoami`" = "root" ]
then
    echo "Use sudo to run this script"
    exit 1
fi

pacman -S --noconfirm oh-my-zsh

curl -fsSL "https://raw.githubusercontent.com/ahmadawais/Shades-of-Purple-iTerm2/master/shades-of-purple.zsh-theme" --output /usr/share/oh-my-zsh/themes/shades-of-purple.zsh-theme
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="shades-of-purple"/' $HOME/.zshrc
echo 'installed shades of purple theme'