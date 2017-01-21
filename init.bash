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

[ -f ~/.asdf/asdf.sh ] && . ~/.asdf/asdf.sh
[ -f ~/.asdf/completions/asdf.bash ] && . ~/.asdf/completions/asdf.bash
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f ~/.enhancd/init.sh ] && . ~/.enhancd/init.sh

if command -v direnv > /dev/null; then
  eval "$(direnv hook bash)"
fi

command -v fortune > /dev/null && fortune -as
