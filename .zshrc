# zplugin
source $HOME/.zsh/plugins.zsh

# alias
if (( ${+commands[lsd]} )); then
  alias ls='lsd'
  alias la='ls -a'
  alias ll='ls -la'
fi

alias e="$EDITOR"

# source files
for file in $HOME/.zsh/<->_*.zsh; do
  source $file
done

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
