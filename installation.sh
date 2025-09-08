#!/bin/bash

echo "Installing YAY Package Manager"

# install aur helper (paru)
if command -v yay &> /dev/null; then
    echo "Yay Already installed"
else
    cd ~
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd ~
    rm -rf yay
fi


# installing apps
echo "Installing core tools"
sudo pacman -S stow zsh fzf tmux neovim picom


echo "Installing browsers"
# install browser
# yay -S brave-bin google-chrome zen-browser-bin


echo "Installing Docker"
# install docker
sudo pacman -S docker
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER


# installing ohmyzsh
echo "Installing OH-MY-ZSH"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
exit



