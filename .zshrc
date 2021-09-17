# Demn config.

zstyle ':completion:*' file-sort name
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' special-dirs true
zstyle :compinstall filename '/home/demn/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install

PROMPT='%F{green}%n%f %d %F{yellow}$ %F{white}'
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word