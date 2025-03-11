zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1
zstyle :compinstall filename '/home/jonas/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

fpath+=($HOME/.zprompts/*)
autoload -Uz compinit promptinit
compinit
promptinit
prompt pure

bindkey "^[[3~" delete-char
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

. ~/.zaliases

PATH="$PATH:$HOME/bin"
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

export EDITOR=nvim
export TERMINAL=/usr/bin/kitty
export NNN_PLUG="p:preview-tui;s:suedit"
export NNN_FIFO=/tmp/nnn.fifo

export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/opt/miniconda3/bin
export JAVA_HOME=/usr/lib/jvm/java-23-openjdk

unsetopt BEEP

eval "$(zoxide init zsh)"
eval $(opam env --switch=4.13.1 --set-switch)

export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
