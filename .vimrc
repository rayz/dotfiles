syntax on
set backspace=indent,eol,start
set noerrorbells
set noswapfile
set nobackup
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir
set incsearch
set tabstop=4 softtabstop=4
set expandtab ts=4 sw=4 ai
set nu
set mouse=
set ttymouse=
set clipboard=unnamed

let mapleader = " "

map <Leader>n :NERDTreeToggle<CR>
map <Leader>ww <C-w>w
map <silent> <Leader>gd :YcmCompleter GoTo<CR>
map <Leader>p :CtrlP<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'valloric/youcompleteme'

Plugin 'vim-airline/vim-airline'

" gruvbox theme
Plugin 'morhetz/gruvbox'

" file finder
Plugin 'kien/ctrlp.vim'

" file explorer
Plugin 'preservim/nerdtree'

" toml syntax highlighting
Plugin 'cespare/vim-toml'

Plugin 'mbbill/undotree'

call vundle#end()            

autocmd vimenter * ++nested colorscheme gruvbox

filetype plugin indent on    

" 2 space indents for yaml files
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" auto bracket completion
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" for no weird bar when splitting terminals
highlight VertSplit guibg=NONE cterm=NONE

" close previews from docs
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

let g:ctrlp_use_caching = 0

