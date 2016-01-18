export EDITOR="emacsclient -c"
export ALTERNATE_EDITOR=""

export VISUAL="$EDITOR"

sudoemacsclient() {
  args=($@)
  if [ "${args[-1]::1}" != "-" ]; then
    args[-1]="/sudo::$(realpath ${args[-1]})"
  fi
  emacsclient "${args[@]}"
}

alias e="emacsclient -c"
alias se="sudoemacsclient -c"

alias en="emacsclient -c -n"
alias sen="sudoemacsclient -c -n"
