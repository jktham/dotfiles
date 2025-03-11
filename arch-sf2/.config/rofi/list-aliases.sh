#!/bin/zsh

. ~/.zaliases

alias | awk -F'[ =]' '{print $1}'
