#!/bin/bash

# dirs to back up, relative to ~/
declare -a dirs_home=(
	".fehbg"
	".xinitrc"
	".Xresources"
	".zprofile"
	".zaliases"
	".zshrc"
	".xinputrc"
)

declare -a dirs_config=(
	".config/bspwm" 
	".config/sxhkd" 
	".config/picom"
	".config/polybar"
	".config/kitty"
	".config/bg"
	".config/neofetch"
	".config/rofi"
	".config/spotifyd"
	".config/dunst"
	".config/mpv"
	".config/nvim"
)

mkdir -p ./$1
for d in "${dirs_home[@]}"; do
   cp -r ~/$d ./$1
done

mkdir -p ./$1/.config
for d in "${dirs_config[@]}"; do
   cp -r ~/$d ./$1/.config
done

sed -i ./$1/.config/spotifyd/spotifyd.conf -e "s|username = \"[^@]*\"|username = \"\"|"
sed -i ./$1/.config/spotifyd/spotifyd.conf -e "s|password = \"[^@]*\"|password = \"\"|"
