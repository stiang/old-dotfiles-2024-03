
if [[ `uname` == 'Darwin' ]]
then
  export EDITOR='subl -w'
  alias emacs="s -w"
  alias emasc="s -w"
  alias cat="colorize"
  # alias less="colorize"
else
  export EDITOR='emacs -nw'
  alias emacs="emacs -nw"
  alias emasc="emacs -nw"
fi

