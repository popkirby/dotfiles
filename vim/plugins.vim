"--------------------------------------------------------------------------------
" lightline.vim {{{1
let g:lightline = {
      \ 'colorscheme' : 'chiery',
      \ 'active' : {
      \   'left' : [ [ 'mode', 'paste' ],
      \              [ 'cocstatus', 'currentfunction', 'readonly', 'fugitive', 'filename', 'modified', 'anzu']],
      \   'right' : [ [ 'syntastic', 'lineinfo' ],
      \               [ 'percent' ],
      \               [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component' : {
      \   'readonly' : '%{&filetype=="help"?"":&readonly?"\ue0a2":""}',
      \   'modified' : '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}'
      \ },
      \ 'component_function' : {
      \   'mode' : 'MyMode',
      \   'fugitive' : 'MyFugitive',
      \   'anzu' : 'anzu#search_status',
      \   'syntastic' : 'neomake#statusline#LoclistStatus',
      \   'cocstatus' : 'coc#status',
      \   'currentfunction': 'CocCurrentFunction'
      \ },
      \ 'component_expand' : {
      \ },
      \ 'component_type' : {
      \   'syntastic' : 'error',
      \ },
      \ 'component_visible_condition': {
      \   'readonly' : '(&filetype!="help" && &readonly)',
      \   'modified' : '(&filetype!="help" && (&modified||!&modifiable))'
      \ },
      \ 'separator' : { 'left' : "\ue0b0", 'right' : "\ue0b2" },
      \ 'subseparator' : { 'left' : "\ue0b1", 'right' : "\ue0b3" },
      \ }

function! MyMode()
  return &ft == 'unite' ? 'Unite' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! MyFugitive()
  if exists('*fugitive#head')
    let _ = fugitive#head()
    return strlen(_) ? "\ue0a0 " . _ : ''
  endif
  return ''
endfunction

function! CocCurrentFunction()
  return get(b:, 'coc_current_function', '')
endfunction

let g:coc_status_error_sign = "\uf05e "

"--------------------------------------------------------------------------------
" vim-incsearch {{{1
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map  / <Plug>(incsearch-forward)
map  ? <Plug>(incsearch-backward)
map  g/ <Plug>(incsearch-stay)
map  n <Plug>(incsearch-nohl-n)
map  N <Plug>(incsearch-nohl-N)
nmap n <Plug>(incsearch-nohl)<Plug>(anzu-n)
nmap N <Plug>(incsearch-nohl)<Plug>(anzu-N)
nmap * <Plug>(incsearch-nohl)<Plug>(anzu-star)
nmap # <Plug>(incsearch-nohl)<Plug>(anzu-sharp)
nmap <silent> <Esc><Esc> <Plug>(anzu-clear-search-status)<bar>:nohlsearch<CR>

"--------------------------------------------------------------------------------
" accelerated-jk {{{1
nmap <silent> j <Plug>(accelerated_jk_gj)
nmap <silent> k <Plug>(accelerated_jk_gk)

"--------------------------------------------------------------------------------
" vim-jsx {{{1
let g:jsx_ext_required = 0

"--------------------------------------------------------------------------------
" vim-easymotion {{{1

"--------------------------------------------------------------------------------
" vim-fzf {{{1
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>j :Buffers<CR>

"--------------------------------------------------------------------------------
" NERDTree {{{1
map <C-n> :NERDTreeToggle<CR>

"--------------------------------------------------------------------------------
" coc.nvim {{{1
let g:coc_global_extensions = [
      \ "coc-json",
      \ "coc-tsserver",
      \ "coc-vimlsp"
      \ ]


inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

augroup MyAutoCmd
  autocmd CursorHold * silent call CocActionAsync('highlight')
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd CompleteDone * silent call popup_clear()
augroup end

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nnoremap K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h ' . expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <leader>rn <Plug>(coc-rename)

" xmap <leader>e <Plug>(coc-format-selected)
" nmap <leader>e <Plug>(coc-format-selected)

xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gm <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"--------------------------------------------------------------------------------
" vim-iced {{{1

let g:iced_enable_auto_linting = v:true

let g:iced_enable_default_key_mappings = v:true

let g:rainbow_active = 0

autocmd FileType clojure execute 'RainbowToggleOn'

"--------------------------------------------------------------------------------
" ale {{{1
let g:ale_fix_on_save = 1
let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'typescript': ['prettier'],
      \ }
