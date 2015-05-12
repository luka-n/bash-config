if command -v colordiff > /dev/null; then
  alias diff=colordiff
fi

alias dirs="dirs -v"

alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

alias sudo="sudo "
alias xargs="xargs "

alias ack="ack -k"

alias ne="perl -ne"
alias pe="perl -pe"

# completing alias, maybe
compalias() {
  cmd=$(echo "$2" | awk '{print $1}')
  _completion_loader $cmd
  fn=$(complete -p $cmd 2> /dev/null | grep -Po "(?<=-F )\S+")
  [ -n "$fn" ] && complete -F $fn $1
  eval "alias $1='$2'"
}

compalias f find
compalias g git
compalias p less
compalias s "sudo "
compalias x "xargs "

compalias a aptitude
compalias ac apt-cache
compalias ag apt-get

compalias jc journalctl
compalias sc systemctl

compalias ls "ls -1F --color=auto"
compalias lc "ls -CF --color=auto"

compalias l "ls"
compalias la "ls -A"
compalias ll "ls -l"
compalias lt "ls -t"
compalias ltr "ls -tr"
