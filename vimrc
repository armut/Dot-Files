
execute pathogen#infect()
filetype plugin on

autocmd vimenter * NERDTree
autocmd vimenter * wincmd w

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
call vundle#end()

set encoding=utf-8
syntax on
set number
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set ignorecase
colorscheme ron

" IndentLine
let g:indentLine_char = '┃'
let g:indentLine_color_term = 234
let g:indentLine_enabled = 0

" Airline
set laststatus=2
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
" For tab-like buffer listing:
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'
" 256 color fix:
"set t_Co=256

"if !exists('g:airline_symbols')
"  let g:airline_symbols = {}
"  endif
"let g:airline_symbols.space = "\ua0"

"set cursorcolumn
colo gruvbox
set cursorline
hi CursorLine cterm=bold term=bold guifg=grey50
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
autocmd WinEnter * setlocal cursorcolumn
autocmd WinLeave * setlocal nocursorcolumn
"highlight CursorLine guibg=#303000 ctermbg=234

autocmd Filetype c setlocal ts=3 sw=3 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab

" Reduce the vim update time for vim-gitgutter
set updatetime=100

" Quit NERDTree if it is the only buffer:
" https://stackoverflow.com/questions/2066590/automatically-quit-vim-if-nerdtree-is-last-and-only-buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Python syntax
let g:python_highlight_all = 1

" Completion
" http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
