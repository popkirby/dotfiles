zstyle ':completion:*:default' menu select=2
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:descriptions' format '%F{yellow}Completing %B%d%b%f'
zstyle ':completion:*' group-name ''

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

DIRSTACKSIZE=100
setopt AUTO_PUSHD
