#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

~/.fehbg &
picom &
kitty -T "welcome" sh -c "neofetch; zsh" &

#xinput set-prop "Microsoft Surface Type Cover Touchpad" 336 1
#xinput set-prop "Microsoft Surface Type Cover Touchpad" 333 20
#xinput set-prop "Microsoft Surface Type Cover Touchpad" 313 1
#xinput set-prop "Microsoft Surface Type Cover Touchpad" 185 2 0 0 0 2 0 0 0 1
#xinput set-prop "Microsoft Surface Type Cover Touchpad" 330 0 1
xinput set-prop "Microsoft Surface Type Cover Touchpad" 344 1
xinput set-prop "Microsoft Surface Type Cover Touchpad" 315 1

sxhkd &
exec bspwm
