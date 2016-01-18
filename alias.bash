if command -v grc > /dev/null; then
  alias dig="grc dig"
  alias ifconfig="grc ifconfig"
  alias mount="grc mount"
  alias netstat="grc netstat"
  alias ping="grc ping"
  alias ps="grc ps"
  alias traceroute="grc traceroute"
fi

if command -v ncat > /dev/null; then
  alias nc=ncat
fi

if command -v hub > /dev/null; then
  alias git=hub
fi

if command -v colordiff > /dev/null; then
  alias diff=colordiff
fi

if command -v colormake > /dev/null; then
  alias make=colormake
fi

alias gcc="gcc -fdiagnostics-color=auto"

if [ -n "$TR_AUTH" ] ; then
  alias transmission-remote="transmission-remote -ne"
fi

alias dirs="dirs -v"

alias grep="grep --color=auto -P"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

alias sudo="sudo "
alias xargs="xargs "

alias ack="ack -k"

alias ne="perl -ne"
alias pe="perl -pe"

alias x="xargs"
alias x0="xargs -0"
alias x1="xargs -n1"

alias files="nautilus"

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

if command -v aptitude > /dev/null; then
  compalias a aptitude
fi

if command -v apt-cache > /dev/null; then
  compalias ac apt-cache
fi

if command -v apt-get > /dev/null; then
  compalias ag apt-get
fi

compalias jc journalctl
compalias sc systemctl

compalias ls "ls -1F --color=auto"
compalias lc "ls -CF --color=auto"

compalias l "ls"
compalias la "ls -A"
compalias ll "ls -l"
compalias lt "ls -t"
compalias ltr "ls -tr"
