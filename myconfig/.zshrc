#!/bin/zsh

if [[ ! "$PATH" == */Users/harvey/src/potion/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/$HOME/src/potion/bin"
fi

export LSCOLORS="gxbxcxdxfxegedabagacad"
export GREP_COLOR="37;45"
export PYENV_SHELL="zsh"
export PYENV_VIRTUALENV_INIT="1"

export NEWLINE=$'\n'
export PS1="%F{green}%D{%b/%d/%y(%a)}%f%F{yellow}%D{%R(%Z)}%f:[%F{cyan1}%~%f]${NEWLINE}%% "

export FZF_CTRL_T_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
export FZF_CTRL_T_OPTS='--preview "bat  --color=always --style=header,grid --line-range :100 {}"'

export  FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!\.git/*"'
export  FZF_DEFAULT_OPTS='--height 50% --reverse --inline-info --preview "bat --color=always --style=header,grid --line-range :100 {}"'

alias py='python3'
alias zs='echo "source ~/.zshrc" && source ~/.zshrc'
alias zv='echo "vi ~/.zshrc" && vi ~/.zshrc'
alias l='ls -1A -G'
alias ls='ls -G'
alias ll='ls -lh -G'
alias la='ll -A'
alias lc='lt -c'
alias lk='ll -Sr'
alias lm='la | "$PAGER"'
alias ln='nocorrect ln -i'
alias lni='nocorrect ln -i'
alias locate='noglob locate'
alias lr='ll -R'
alias lt='ll -tr'
alias lu='lt -u'
alias lx='ll -XB'
alias zs="source $HOME/.zshrc"
alias zv="vi $HOME/.zshrc"
alias p='potion'
