# The following lines were added by compinstall

zstyle ':completion:*' file-sort name
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' special-dirs true
zstyle :compinstall filename '/home/demn/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

PROMPT='%F{green}%n%f %d %F{yellow}$ %F{white}'
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Golang da
export GOPATH=$HOME/go 
export PATH=$PATH:$GOPATH/bin
