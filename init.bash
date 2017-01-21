# If not running interactively, don't do anything
case $- in
  *i*) ;;
  *) return;;
esac

export MC_SKIN=modarcon16
export MANWIDTH=80
export LESS=-Ri

shopt -s autocd
shopt -s checkwinsize

if [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
fi

. ~/.bashrc.d/alias.bash
. ~/.bashrc.d/editor.bash
. ~/.bashrc.d/history.bash
. ~/.bashrc.d/prompt.bash

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

. ~/.bashrc.d/fortune.bash
