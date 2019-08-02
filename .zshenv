path=(\
  /usr/local/bin(N-/)
  $HOME/bin(N-/)
  $HOME/go/bin(N-/)
  $path
)

# lang
export LANGUAGE="en_US.UTF-8"
export LANG="${LANGUAGE}"
export LC_ALL="${LANGUAGE}"

# editor
export EDITOR=vim
export GIT_EDITOR="${EDITOR}"

# history
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
export LISTMAX=50

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

source $HOME/.zsh/path.zsh
