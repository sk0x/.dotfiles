#!/bin/bash

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
sudo pacman -S stow zsh fzf tmux neovim

# Change shell to zsh
chsh -s $(which zsh)

# installing ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

exit

# install browser
yay -S brave-bin google-chrome zen-browser-bin


# install docker
sudo pacman -S docker
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER

