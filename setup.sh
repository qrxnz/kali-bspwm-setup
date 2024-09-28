#!/bin/env bash

sudo apt update && sudo apt upgrade -y

sudo apt-get install -y wget curl git thunar stow neovim podman zoxide fzf \
xsel xclip duf eza flameshot bspwm sxhkd polybar feh rofi kitty tmux picom \
golang delve clang ccls gdb cargo

curl -fsSL https://bun.sh/install | bash

curl -sS https://starship.rs/install.sh | sh

curl -sL https://raw.githubusercontent.com/iustin24/chameleon/master/install.sh | bash

sh <(curl -L https://nixos.org/nix/install) --no-daemon

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

stow files --adopt

echo "source ~/.config/zshrc/zshrc" > ~/.zshrc

echo "source-file ~/.config/tmux/tmux.conf" > ~/.tmux.conf

sudo mkdir /opt/catch/
cd /opt/catch/
git clone https://github.com/jazzpizazz/catch.git
cargo build -r

cd ~/


echo "Installation Completed!"
