" indents
set smarttab
set expandtab
set tabstop=2 softtabstop=2 shiftwidth=2
set shiftround
set autoindent smartindent

set modeline

" enable mouse
set mouse=a
set ttymouse=xterm2

" use system clipboard
if has('unnamedplus')
  set clipboard& clipboard+=unnamedplus
else
  set clipboard& clipboard+=unnamed
endif

" delete indent/newline with backspace
set backspace=indent,eol,start

" no auto comment out
augroup MyAutoCmd
  autocmd FileType * setlocal formatoptions-=ro
augroup END

" highlight pairs
set showmatch
set cpoptions-=m
set matchtime=3

set hidden
set autoread
set infercase

set foldenable
set foldmethod=marker

set foldcolumn=3
set fillchars=vert:\|
set commentstring=%s

set timeout timeoutlen=3000 ttimeoutlen=100

set updatetime=300

set virtualedit=block

" undofile
set directory-=.
set directory^=~/.cache/vim
set undofile
let &undodir=&directory

if has('nvim')
  set viminfo=\"50,'100,<1000,h,s100,n~/.cache/.nviminfo
else
  set viminfo=\"50,'100,<1000,h,s100,n~/.cache/.viminfo
endif

" Encodings
if has('kaoriya')
  set fileencoding=guess
endif

set fileformat=unix
set fileformats=unix,dos,mac
set ambiwidth=single
