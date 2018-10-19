#!/usr/bin/env bash

echo -e "\e[40;38;5;82m Dot \e[30;48;5;82m Files https://github.com/AwesomeObserver/dotfiles \e[0m"

echo -e "\e[31m------START------\e[0m"

sudo apt update && sudo apt upgrade

pkgs=(
  zsh
  neofetch
  neovim
  sshpass
  ansible
  htop
)

for i in "${pkgs[@]}"; do
  sudo apt install $i
done

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# Install Powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo -e "\e[42m------DONE------\e[0m"
exit 0