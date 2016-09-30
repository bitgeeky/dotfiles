" Set color scheme to molokai
colorscheme molokai

autocmd BufEnter * silent! lcd %:p:h
set laststatus=2
set encoding=utf-8
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set smarttab
set expandtab
set hlsearch
"set paste

set tabstop=8
set expandtab
set shiftwidth=4

syntax on
filetype plugin indent on
set cindent
filetype indent on
set number

filetype plugin on
set omnifunc=syntaxcomplete#Complete

highlight Pmenu ctermfg=red ctermbg=yellow
"highlight PmenuSel ctermfg=blue ctermbg=yellow
"highlight Pmenu guibg=yellow gui=bold

"Line Numbering
set cursorline
"hi CursorLine   guibg=grey
"hi LineNr       guifg=#555555

" Make Vim more useful
"set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
"set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
"set esckeys

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list



"Code folding
"set foldmethod=indent   "fold based on indent
"set foldnestmax=10      "deepest fold is 10 levels
"set nofoldenable        "dont fold by default
"set foldlevel=1         "sets folding level
"set mouse=a             "mouse click to fold/unfold

" Don’t add empty newlines at the end of files
set binary
set noeol


" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Change mapleader
let mapleader=","


" Strip trailing whitespace (,ss)
function! StripWhitespace()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>


execute pathogen#infect()


" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


"autocmd vimenter * NERDTree
autocmd VimEnter * wincmd w
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>
map <C-f> :CommandT<CR>
let g:NERDTreeWinPos = "right"
autocmd! BufNewFile *.cpp silent! 0r /Users/bitgeeky/coding/template.cpp
autocmd! BufNewFile *.c silent! 0r /Users/bitgeeky/coding/template.c
autocmd! BufNewFile *.cc silent! 0r /Users/bitgeeky/coding/template.cpp
