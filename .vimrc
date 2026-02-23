set exrc
set guicursor=
set number
set nohlsearch
set hidden
set noerrorbells
set showmode
set tabstop=4 softtabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
" set colorcolumn=80
set signcolumn=yes
set backspace=indent,eol,start
set termguicolors
set background=dark
set encoding=utf-8
set relativenumber

let g:netrw_liststyle = 3

filetype plugin indent on
" show existing tab with 4 spaces width

" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
