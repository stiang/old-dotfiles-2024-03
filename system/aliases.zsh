if $(grc &>/dev/null)
then
  # alias ls="grc ls"
  alias ping="grc ping"
  alias traceroute="grc traceroute"
  alias configure="grc configure"
  alias gcc="grc gcc"
  alias make="grc make"
  alias netstat="grc netstat"
  alias diff="grc diff"
  alias wdiff="grc wdiff"
  alias last="grc last"
  alias mount="grc mount"
  alias mtr="grc mtr"
  alias ps="grc ps"
  alias dig="grc dig"
  # alias ifconfig="grc ifconfig"
fi

if [[ `uname` == 'Darwin' ]]
then
  alias emacs="subl -w"
  alias emasc="subl -w"
  # alias cat="colorize"
  # alias less="colorize"
else
  alias emacs="emacs -nw"
  alias emcas="emacs -nw"
  alias emasc="emacs -nw"
fi

