# If not running interactively, don't do anything
case $- in
  *i*) ;;
  *) return;;
esac

. ~/.bashrc.d/alias.bash
. ~/.bashrc.d/autopushd.bash
. ~/.bashrc.d/editor.bash
. ~/.bashrc.d/history.bash
. ~/.bashrc.d/prompt.bash
. ~/.bashrc.d/title.bash

. ~/.bashrc.d/fortune.bash
. ~/.bashrc.d/todo.bash

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export MC_SKIN=modarcon16
export MANWIDTH=80
export LESS=-Ri

shopt -s autocd
shopt -s checkwinsize
