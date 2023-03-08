set ts=2
set sw=2
set expandtab
set autoindent
set smartindent

highlight Tab ctermbg=red guibg=red
match Tab /\t/
autocmd BufWinEnter * match Tab /\t/
autocmd BufWinLeave * call clearmatches()
