#!/bin/env bash

sudo apt update && sudo apt upgrade -y

sudo apt-get install -y wget curl git thunar stow neovim podman zoxide fzf \
xsel xclip duf eza bat flameshot bspwm sxhkd polybar feh rofi kitty tmux picom \
golang delve clang ccls gdb cargo

mkdir -p ~/.local/bin/

curl -fsSL https://bun.sh/install | bash

curl -sS https://starship.rs/install.sh | sh

sh <(curl -L https://nixos.org/nix/install) --no-daemon

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

stow files --adopt

echo "source ~/.config/zshrc/zshrc" > ~/.zshrc

echo "source-file ~/.config/tmux/tmux.conf" > ~/.tmux.conf

cd $HOME

echo "Installation Completed!"
