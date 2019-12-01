# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

HISTSIZE=10000
HISTFILESIZE=20000

shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# `\w' in PS1, show like `.../current/dir'
PROMPT_DIRTRIM=2
#PS1='\[\033[01;32m\]\u\[\033[00;32m\]@\h\[\033[00m\]:\[\033[34;47m\]\w\[\033[00m\]\$ '
GIT_PS1_SHOWDIRTYSTATE=1

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if type __git_ps1 >/dev/null 2>/dev/null ; then
  PS1='\[\033[01;32m\]\u\[\033[00;32m\]@\h\[\033[00m\]:\[\033[36;47m\]\w\[\033[00m\]$(__git_ps1 " (%s)")\$ '
else
  PS1='\[\033[01;32m\]\u\[\033[00;32m\]@\h\[\033[00m\]:\[\033[36;47m\]\w\[\033[00m\]$ '
fi

export LESS='-R -i -j4 -X -F'
export LESS_TERMCAP_mb=$(printf "\e[1;31m")
export LESS_TERMCAP_md=$(printf "\e[1;31m")
export LESS_TERMCAP_me=$(printf "\e[0m")
export LESS_TERMCAP_se=$(printf "\e[0m")
export LESS_TERMCAP_so=$(printf "\e[1;44;33m")
export LESS_TERMCAP_ue=$(printf "\e[0m")
export LESS_TERMCAP_us=$(printf "\e[1;32m")

export PERLDOC='-o man'

PATH="${HOME}/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="${HOME}/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="${HOME}/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"${HOME}/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=${HOME}/perl5"; export PERL_MM_OPT;
