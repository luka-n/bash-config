if test -f ~/Org/todo.org &&
    ls -d ~/.emacs.d/elpa/e2ansi-*/ > /dev/null 2>&1; then
  bin=$(ls ~/.emacs.d/elpa/e2ansi-*/bin/e2ansi-cat | tail -1)
  $bin ~/Org/todo.org 2> /dev/null
fi
