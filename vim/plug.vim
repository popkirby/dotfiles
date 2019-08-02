call plug#begin('$CACHE/plugged')

Plug 'itchyny/lightline.vim'
Plug 'rhysd/accelerated-jk'
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rhysd/clever-f.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'luochen1990/rainbow'
Plug 'osyo-manga/vim-anzu'
Plug 'haya14busa/incsearch.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'

Plug 'maxmellon/vim-jsx-pretty'

Plug 'guns/vim-sexp', { 'for': 'clojure' }
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }
Plug 'liquidz/vim-iced', { 'for': 'clojure' }

Plug 'ryanoasis/vim-devicons'

call plug#end()
