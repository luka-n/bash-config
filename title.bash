show_directory_in_title_bar() {
  echo -ne "\033]0;${USER}@${HOSTNAME%%.*}: ${PWD##*/}\007"
}

show_command_in_title_bar() {
  echo -ne "\033]0;${USER}@${HOSTNAME%%.*}: ${BASH_COMMAND%% *}\007"
}

case "$TERM" in
  xterm*|rxvt*|screen*)
    # must come last, because BASH_COMMAND
    PROMPT_COMMAND="${PROMPT_COMMAND}show_directory_in_title_bar;"
    trap show_command_in_title_bar DEBUG
    ;;
  *)
    ;;
esac
