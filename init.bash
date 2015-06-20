# If not running interactively, don't do anything
case $- in
  *i*) ;;
  *) return;;
esac

[ -z "$STY" ] && exec screen

export MC_SKIN=modarcon16
export MANWIDTH=80
export LESS=-Ri

shopt -s autocd
shopt -s checkwinsize

if [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
fi

. ~/.bashrc.d/alias.bash
. ~/.bashrc.d/autopushd.bash
. ~/.bashrc.d/editor.bash
. ~/.bashrc.d/history.bash
. ~/.bashrc.d/prompt.bash
. ~/.bashrc.d/title.bash

. ~/.bashrc.d/fortune.bash
. ~/.bashrc.d/todo.bash
. ~/.bashrc.d/lastbackup.bash

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
