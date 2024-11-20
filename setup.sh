#!/bin/bash

# Update and install essential packages
sudo apt update && sudo apt upgrade -y
sudo apt install -y git curl zsh vim

# Clone dotfiles repo
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles

# Symlink dotfiles
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc

# Install and configure Zsh
sudo apt install -y zsh
chsh -s $(which zsh)
ln -sf ~/dotfiles/.zshrc ~/.zshrc

# Apply other settings
source ~/.bashrc
# List of software to install
packages=(
    "git"
    "curl"
    "zsh"
    "vim"
    "gnome-tweaks"
)

# Install each package
for pkg in "${packages[@]}"; do
    sudo apt install -y $pkg
done
