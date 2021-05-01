call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Raimondi/delimitMate'
Plug 'Chiel92/vim-autoformat'
call plug#end()

" delimitMate
au FileType python let b:delimitMate_nesting_quotes = ['"']
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1

" autoformat
noremap <F3> :Autoformat<cr>
" au BufWrite * :Autoformat
"let g:autoformat_verbosemode=1
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
let g:formatdef_my_custom_cpp = '"clang-format --style=Google"'
let g:formatters_c = ['my_custom_cpp']
let g:formatters_cpp = ['my_custom_cpp']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remap leader
let mapleader = ','
" Fast saving
nmap <leader>w :w!<cr>

set encoding=utf-8
set backspace=2
set hidden
set nobackup
set noswapfile
set nowritebackup
set nu
set belloff=all

set colorcolumn=80
hi ColorColumn ctermbg=grey guibg=lightgrey

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

source ~/.myvimrc/coc.vim
source ~/.myvimrc/python.vim
source ~/.myvimrc/cpp.vim
source ~/.myvimrc/js.vim
