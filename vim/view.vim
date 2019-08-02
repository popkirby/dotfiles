"--------------------------------------------------------------------------------
" View

set number
set nowrap
set whichwrap=b,s,<,>,[,]

" wrap in preview window
autocmd MyAutoCmd BufWinEnter * if &previewwindow == 1
      \ | setlocal wrap
      \ | endif

autocmd MyAutoCmd CompleteDone * pclose

set cursorline

set scrolloff=5

set laststatus=2
set cmdheight=2
set signcolumn=yes
set showcmd
set showmode
set showtabline=2

set shortmess=aT

set nobackup
set backupdir-=.

set t_vb=
set novisualbell

set wildmenu
set wildmode=full

set history=1000

" display all the information of the tag
set showfulltag
set wildoptions=tagfile

set spelllang=en_US

" completion
set completeopt=menuone,preview
set complete=.
set pumheight=20

set report=0

set splitbelow
set splitright

set cmdwinheight=5
set noequalalways

set lazyredraw

set display=lastline

set colorcolumn=100

set noshowmode

" syntax
set background=dark
set termguicolors

colorscheme chiery

let macvim_skip_colorscheme=1
let macvim_skip_cmd_opt_movement=1
let nogvimrc_example=1
