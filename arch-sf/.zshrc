zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

autoload -Uz compinit
compinit

fpath+=($HOME/.zsh/pure)

autoload -Uz promptinit
promptinit
prompt pure

bindkey "^[[3~" delete-char

. ~/.zsh_aliases

export EDITOR=vim

export NNN_PLUG="p:preview-tui;s:suedit"
export NNN_FIFO=/tmp/nnn.fifo
export _JAVA_AWT_WM_NONREPARENTING=1

