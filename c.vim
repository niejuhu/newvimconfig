set ts=4
set sw=4
set expandtab
set autoindent
set smartindent

highlight Tab ctermbg=red guibg=red
match Tab /\t/
autocmd BufWinEnter * match Tab /\t/
autocmd BufWinLeave * call clearmatches()
