completion='$(brew --prefix)/share/zsh/site-functions/_hub'

if test -f $completion
then
  source $completion
fi
