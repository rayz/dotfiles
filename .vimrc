set nocompatible              

" line numbers
set relativenumber

let mapleader = " "
map <Leader>n :NERDTreeToggle<CR>
map <Leader>gt :YcmCompleter GoTo<CR>

set backspace=indent,eol,start

filetype off                  

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

call vundle#end()            

autocmd vimenter * ++nested colorscheme gruvbox

filetype plugin indent on    

set tabstop=4
syntax on
set nu

set expandtab ts=4 sw=4 ai

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



set clipboard=unnamed

" for no weird bar when splitting terminals
highlight VertSplit guibg=NONE cterm=NONE

" line below is for auto open nerd tree
" au VimEnter *  NERDTree

" line below is for auto go to code window
" autocmd VimEnter * NERDTree | wincmd p

set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

set mouse=
set ttymouse=

" close previews from docs
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
