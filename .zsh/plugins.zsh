# init zplugin
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

# plugins
zplugin ice wait"0" blockf
zplugin light zsh-users/zsh-completions

zplugin ice as"completion"
zplugin snippet https://github.com/docker/cli/blob/master/contrib/completion/zsh/_docker

zplugin ice wait"0" atinit"zpcompinit; zpcdreplay"
zplugin light zdharma/fast-syntax-highlighting

zplugin ice pick"async.zsh" src"pure.zsh"
zplugin light sindresorhus/pure

zplugin light zsh-users/zsh-history-substring-search

zplugin ice wait'0' atload'_zsh_autosuggest_start'
zplugin light zsh-users/zsh-autosuggestions

zplugin ice pick'init.sh'
zplugin light b4b4r07/enhancd

zplugin snippet "$HOME/.zshrc_local"
