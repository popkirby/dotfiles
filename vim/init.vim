if !isdirectory(expand('$CACHE/autoload'))
  call mkdir(expand('$CACHE/autoload'), 'p')
endif

if &runtimepath !~ '/vim-plug'
  if !filereadable(expand('$CACHE/autoload/plug.vim'))
    execute '!curl -fLo ' . expand('$CACHE/autoload/plug.vim') . ' https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  endif
  execute 'set runtimepath^=' . expand('$CACHE')
endif
