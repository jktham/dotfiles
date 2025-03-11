#!bin/bash

mkdir -p ~/stuff/dotfiles/$1
mkdir -p ~/stuff/dotfiles/$1/.config
mkdir -p ~/stuff/dotfiles/$1/.config/bspwm
mkdir -p ~/stuff/dotfiles/$1/.config/sxhkd
mkdir -p ~/stuff/dotfiles/$1/.config/picom
mkdir -p ~/stuff/dotfiles/$1/.config/polybar
mkdir -p ~/stuff/dotfiles/$1/.config/kitty
mkdir -p ~/stuff/dotfiles/$1/.config/kitty/themes
mkdir -p ~/stuff/dotfiles/$1/.config/bg
mkdir -p ~/stuff/dotfiles/$1/.config/neofetch
mkdir -p ~/stuff/dotfiles/$1/.config/rofi
mkdir -p ~/stuff/dotfiles/$1/.config/spotifyd
mkdir -p ~/stuff/dotfiles/$1/.config/dunst
mkdir -p ~/stuff/dotfiles/$1/.config/mpv

cp ~/.fehbg ~/stuff/dotfiles/$1
cp ~/.xinitrc ~/stuff/dotfiles/$1
cp ~/.Xresources ~/stuff/dotfiles/$1
cp ~/.zprofile ~/stuff/dotfiles/$1
cp ~/.zaliases ~/stuff/dotfiles/$1
cp ~/.zshrc ~/stuff/dotfiles/$1

cp ~/.config/bspwm/bspwmrc ~/stuff/dotfiles/$1/.config/bspwm
cp ~/.config/sxhkd/sxhkdrc ~/stuff/dotfiles/$1/.config/sxhkd
cp ~/.config/picom/picom.conf ~/stuff/dotfiles/$1/.config/picom

cp ~/.config/polybar/config.ini ~/stuff/dotfiles/$1/.config/polybar
cp ~/.config/polybar/launch.sh ~/stuff/dotfiles/$1/.config/polybar

cp ~/.config/kitty/themes/* ~/stuff/dotfiles/$1/.config/kitty/themes
cp ~/.config/kitty/current-theme.conf ~/stuff/dotfiles/$1/.config/kitty
cp ~/.config/kitty/kitty.conf ~/stuff/dotfiles/$1/.config/kitty

cp ~/.config/bg/firewatch-day.jpg ~/stuff/dotfiles/$1/.config/bg
cp ~/.config/bg/firewatch-night.jpg ~/stuff/dotfiles/$1/.config/bg

cp ~/.config/neofetch/config.conf ~/stuff/dotfiles/$1/.config/neofetch

cp ~/.config/rofi/config.rasi ~/stuff/dotfiles/$1/.config/rofi
cp ~/.config/rofi/list-aliases.sh ~/stuff/dotfiles/$1/.config/rofi
cp ~/.config/rofi/theme.rasi ~/stuff/dotfiles/$1/.config/rofi

cp ~/.config/spotifyd/spotifyd.conf ~/stuff/dotfiles/$1/.config/spotifyd
sed -i ~/stuff/dotfiles/$1/.config/spotifyd/spotifyd.conf -e "s|username = \"[^@]*\"|username = \"\"|"
sed -i ~/stuff/dotfiles/$1/.config/spotifyd/spotifyd.conf -e "s|password = \"[^@]*\"|password = \"\"|"

cp -r ~/.config/dunst ~/stuff/dotfiles/$1/.config
cp -r ~/.config/mpv ~/stuff/dotfiles/$1/.config/
