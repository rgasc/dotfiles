" hybrid line numbers
set number relativenumber
set nu rnu

" tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set textwidth=100

" statusline
set statusline+=%F

" autocomplete brackets
inoremap " ""<left>
" inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" syntax highlighting
syntax on

" column highlight
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%101v', 10)
