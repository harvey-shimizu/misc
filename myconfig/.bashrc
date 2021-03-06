#!/bin/bash

# To the extent possible under law, the author(s) have dedicated all
# copyright and related and neighboring rights to this software to the
# public domain worldwide. This software is distributed without any warranty.
# You should have received a copy of the CC0 Public Domain Dedication along
# with this software.
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

# base-files version 4.3-2

# ~/.bashrc: executed by bash(1) for interactive shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bashrc

# Modifying /etc/skel/.bashrc directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bashrc) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bashrc file

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

export PATH=$PATH:'/cygdrive/c/Users/Harvey/Downloads'

# Shell Options
#
# See man bash for more options...
#
# Don't wait for job termination notification
# set -o notify
#
# Don't use ^D to exit
# set -o ignoreeof
#
# Use case-insensitive filename globbing
# shopt -s nocaseglob
#
# Make bash append rather than overwrite the history on disk
# shopt -s histappend
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# shopt -s cdspell

# Programmable completion enhancements are enabled via
# /etc/profile.d/bash_completion.sh when the package bash_completetion
# is installed.  Any completions you add in ~/.bash_completion are
# sourced last.

# History Options
#
# Don't put duplicate lines in the history.
# export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
#
# Whenever displaying the prompt, write the previous line to disk
 export PROMPT_COMMAND="history -a"

# Aliases
#
# Some people use a different file for aliases
# if [ -f "${HOME}/.bash_aliases" ]; then
#   source "${HOME}/.bash_aliases"
# fi
#
# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.
#
# Interactive operation...
 alias rm='rm -i'
 alias cp='cp -i'
 alias mv='mv -i'
#
# Default to human readable figures
# alias df='df -h'
# alias du='du -h'
#
# Misc :)
 alias less='less -r'                          # raw control characters
 alias whence='type -a'                        # where, of a sort
 alias grep='grep --color'                     # show differences in colour
 alias egrep='egrep --color=auto'              # show differences in colour
 alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
 alias ls='ls --color=tty'                 # classify files in colour
 alias ll='ls -lag --color=tty'                 # classify files in colour
# alias dir='ls --color=auto --format=vertical'
# alias vdir='ls --color=auto --format=long'
# alias ll='ls -l'                              # long list
 alias la='ls -A'                              # all but . and ..
 alias l='ls -CF'                              #

# Umask
#
# /etc/profile sets 022, removing write perms to group + others.
# Set a more restrictive umask: i.e. no exec perms for others:
# umask 027
# Paranoid: neither group nor others have any perms:
# umask 077

# Functions
#
# Some people use a different file for functions
# if [ -f "${HOME}/.bash_functions" ]; then
#   source "${HOME}/.bash_functions"
# fi
#
# Some example functions:
#
# a) function settitle
# settitle ()
# {
#   echo -ne "\e]2;$@\a\e]1;$@\a";
# }
#
# b) function cd_func
# This function defines a 'cd' replacement function capable of keeping,
# displaying and accessing history of visited directories, up to 10 entries.
# To use it, uncomment it, source this file and try 'cd --'.
# acd_func 1.0.5, 10-nov-2004
# Petar Marinov, http:/geocities.com/h2428, this is public domain
 cd_func ()
 {
   local x2 the_new_dir adir index
   local -i cnt

   if [[ $1 ==  "--" ]]; then
     dirs -v
     return 0
   fi

   the_new_dir=$1
   [[ -z $1 ]] && the_new_dir=$HOME

   if [[ ${the_new_dir:0:1} == '-' ]]; then
     #
     # Extract dir N from dirs
     index=${the_new_dir:1}
     [[ -z $index ]] && index=1
     adir=$(dirs +$index)
     [[ -z $adir ]] && return 1
     the_new_dir=$adir
   fi

   #
   # '~' has to be substituted by ${HOME}
   [[ ${the_new_dir:0:1} == '~' ]] && the_new_dir="${HOME}${the_new_dir:1}"

   #
   # Now change to the new dir and add to the top of the stack
   pushd "${the_new_dir}" > /dev/null
   [[ $? -ne 0 ]] && return 1
   the_new_dir=$(pwd)

   #
   # Trim down everything beyond 11th entry
   popd -n +11 2>/dev/null 1>/dev/null

   #
   # Remove any other occurence of this dir, skipping the top of the stack
   #for ((cnt=1; cnt <= 10; cnt++)); do
   for ((cnt=1; cnt <= 50; cnt++)); do
     x2=$(dirs +${cnt} 2>/dev/null)
     [[ $? -ne 0 ]] && return 0
     [[ ${x2:0:1} == '~' ]] && x2="${HOME}${x2:1}"
     if [[ "${x2}" == "${the_new_dir}" ]]; then
       popd -n +$cnt 2>/dev/null 1>/dev/null
       cnt=cnt-1
     fi
   done

   return 0
}

alias cd=cd_func


#export FZF_DEFAULT_OPS='--height 40% --reverse --border --inline-info --color=always'
#export FZF_DEFAULT_OPS='--preview "bat  --color=always --style=header,grid --line-range :100 {} --height 40% --reverse --inline-info --color=always'
#export FZF_COMPLETION_TRIGGER='**'

if [ "$(uname)" == 'Darwin' ]; then
    OS='Mac'
    #elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    export FZF_DEFAULT_OPTS='--preview "bat --color=always --style=header,grid --line-range :100 {}" --multi --height 70% --reverse --inline-info'
    export FZF_CTRL_T_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
    export FZF_COMPLETION_OPTS='+c -x'
elif [ "$(uname -s | cut -d'_' -f 1)" == 'CYGWIN' ]; then
  OS='Cygwin'
    export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
    #export FZF_DEFAULT_OPTS='--preview "cat" --reverse --inline-info'
    export FZF_DEFAULT_OPTS='--preview "bat --color=always --style=header,grid --line-range :100 {}" --multi --reverse --inline-info'
    export FZF_CTRL_T_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias f='fzf'
alias vf='vim $(fzf)'

# Zenburn is a low-contrast color scheme for Vim.
# It is requied to set
export TERM=xterm-256color

# for ycmd server
export PYTHON_USED_DURING_BUILDING="/usr/bin/python3.8.exe"

#export PS1="\\$\d \T@\n\w>\[$(tput sgr1)\]"
#export PS1="\[\e[33m\]\T\[\e[m\] \[\e[31m\]\d\[\e[m\]:\u@\[\e[36m\]\h\[\e[m\]\n[\[\e[35m\]\w\[\e[m\]] > "
export PS1="[\[\e[31m\]\d\[\e[m\]\\\\\[\e[33m\]\t\[\e[m\] \u@\[\e[36m\]\h\[\e[m\]]\n[\[\e[35m\]\w\[\e[m\]]> "

#LSCOLOR
#export LS_COLORS='gxbxcxdxfxegedabagacad'
#export LS_COLORS='di=36:ln=31:so=32:pi=33:ex=35:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'

alias ipy=/usr/local/bin/python3.9
alias b="vi ~/.bashrc"
alias bv="vi ~/.bashrc"
alias vb="vi ~/.bashrc"
alias bs="source ~/.bashrc"
alias sb="source ~/.bashrc"
alias v=vim

# fshow - git commit browser
fshow() {
  git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}
