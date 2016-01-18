declare -A fmt
fmt[bold]=$(tput bold)

declare -A fg
fg[red]=$(tput setaf 1)
fg[green]=$(tput setaf 2)
fg[blue]=$(tput setaf 4)

reset=$(tput sgr0)

make_prompt() {
  local ret=$?
  PS1="\[${fmt[bold]}\]"
  if [ $EUID -eq 0 ]; then
    PS1+="\[${fg[red]}\]\h "
  else
    PS1+="\[${fg[green]}\]\h "
  fi
  PS1+="\[${fg[blue]}\]\W "
  if [ $ret -eq 0 ]; then
    PS1+="\[${fg[blue]}\]\\$ "
  else
    PS1+="\[${fg[red]}\]\\$ "
  fi
  PS1+="\[${reset}\]"
}

# this one must come first on account of needing the return code
PROMPT_COMMAND="make_prompt;${PROMPT_COMMAND}"
