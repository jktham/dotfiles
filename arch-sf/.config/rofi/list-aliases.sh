#!/bin/zsh

. ~/.zsh_aliases

alias | awk -F'[ =]' '{print $1}'
