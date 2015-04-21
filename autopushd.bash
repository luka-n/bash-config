function cd {
  case "$@" in
    "-") pushd ;;
    "")  pushd ~ ;;
    *)   pushd "$@" ;;
  esac > /dev/null
}
