if (( ${+commands[lsd]} )); then
  alias ls="lsd"
fi

alias la="ls -a"
alias ll="ls -la"

alias e="$EDITOR"

function mkdcd {
  [[ -n "$1" ]] && mkdir -p "$1" && builtin cd "$1"
}

function fp {
  local dir
  dir=$(ghq list > /dev/null | fzf --reverse +m --select-1 --query="$1") && cd $(ghq root)/$dir
}
