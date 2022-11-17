#!bin/bash

mkdir -p ~/projects/dotfiles/$1
mkdir -p ~/projects/dotfiles/$1/.config
mkdir -p ~/projects/dotfiles/$1/.config/bspwm
mkdir -p ~/projects/dotfiles/$1/.config/sxhkd
mkdir -p ~/projects/dotfiles/$1/.config/picom
mkdir -p ~/projects/dotfiles/$1/.config/polybar
mkdir -p ~/projects/dotfiles/$1/.config/kitty
mkdir -p ~/projects/dotfiles/$1/.config/kitty/themes
mkdir -p ~/projects/dotfiles/$1/.config/bg
mkdir -p ~/projects/dotfiles/$1/.config/neofetch
mkdir -p ~/projects/dotfiles/$1/.config/rofi
mkdir -p ~/projects/dotfiles/$1/.config/spotifyd

cp ~/.fehbg ~/projects/dotfiles/$1
cp ~/.xinitrc ~/projects/dotfiles/$1
cp ~/.Xresources ~/projects/dotfiles/$1
cp ~/.zprofile ~/projects/dotfiles/$1
cp ~/.zsh_aliases ~/projects/dotfiles/$1
cp ~/.zshrc ~/projects/dotfiles/$1

cp ~/.config/bspwm/bspwmrc ~/projects/dotfiles/$1/.config/bspwm
cp ~/.config/sxhkd/sxhkdrc ~/projects/dotfiles/$1/.config/sxhkd
cp ~/.config/picom/picom.conf ~/projects/dotfiles/$1/.config/picom

cp ~/.config/polybar/config.ini ~/projects/dotfiles/$1/.config/polybar
cp ~/.config/polybar/launch.sh ~/projects/dotfiles/$1/.config/polybar

cp ~/.config/kitty/themes/* ~/projects/dotfiles/$1/.config/kitty/themes
cp ~/.config/kitty/current-theme.conf ~/projects/dotfiles/$1/.config/kitty
cp ~/.config/kitty/kitty.conf ~/projects/dotfiles/$1/.config/kitty

cp ~/.config/bg/firewatch-day.jpg ~/projects/dotfiles/$1/.config/bg
cp ~/.config/bg/firewatch-night.jpg ~/projects/dotfiles/$1/.config/bg

cp ~/.config/neofetch/config.conf ~/projects/dotfiles/$1/.config/neofetch

cp ~/.config/rofi/config.rasi ~/projects/dotfiles/$1/.config/rofi
cp ~/.config/rofi/list-aliases.sh ~/projects/dotfiles/$1/.config/rofi
cp ~/.config/rofi/theme.rasi ~/projects/dotfiles/$1/.config/rofi

cp ~/.config/spotifyd/spotifyd.conf ~/projects/dotfiles/$1/.config/spotifyd
sed -i ~/projects/dotfiles/$1/.config/spotifyd/spotifyd.conf -e "s|username = \"[^@]*\"|username = \"\"|"
sed -i ~/projects/dotfiles/$1/.config/spotifyd/spotifyd.conf -e "s|password = \"[^@]*\"|password = \"\"|"
