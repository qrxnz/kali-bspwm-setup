#!/bin/env bash

sudo apt update && sudo apt upgrade -y

sudo apt-get install -y wget curl git thunar stow neovim podman zoxide fzf \
xsel xclip duf eza bat flameshot bspwm sxhkd polybar feh rofi kitty tmux picom \
golang delve clang ccls gdb cargo

mkdir -p ~/.local/bin/

curl -fsSL https://bun.sh/install | bash

curl -sS https://starship.rs/install.sh | sh

curl -sL https://raw.githubusercontent.com/iustin24/chameleon/master/install.sh | bash
mv ./chameleon ~/.local/bin/

sh <(curl -L https://nixos.org/nix/install) --no-daemon

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

stow files --adopt

echo "source ~/.config/zshrc/zshrc" > ~/.zshrc

echo "source-file ~/.config/tmux/tmux.conf" > ~/.tmux.conf

sudo mkdir /opt/catch/
cd /opt/catch/
sudo git clone https://github.com/jazzpizazz/catch.git && cd catch
sudo cargo build -r
cp ./target/release/catch ~/.local/bin/
sudo chown $USERNAME:$USERNAME /opt/catch
sudo chown $USERNAME:$USERNAME /opt/catch/catch

cd $HOME

echo "Installation Completed!"
