set nocompatible              
filetype off                  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'Valoric/YouCompleteMe'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'preservim/nerdtree'

Plugin 'dracula/vim', { 'name': 'dracula' }


call vundle#end()            
" for dracula theme
colorscheme dracula
let g:dracula_italic = 0


filetype plugin indent on    

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


set tabstop=4
syntax on
set nu

set expandtab ts=4 sw=4 ai

" 2 space indents for yaml files
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab


inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O


map <C-n> :NERDTreeToggle<CR>

set clipboard=unnamed
"let g:airline_theme='bubblegum'
"let g:airline_theme='jellybeans'


" for no weird bar when splitting terminals
highlight VertSplit guibg=NONE cterm=NONE

" line below is for auto open nerd tree
" au VimEnter *  NERDTree



" line below is for auto go to code window
" autocmd VimEnter * NERDTree | wincmd p

"colo delek
"set t_Co=256
"colo zenburn


set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

set mouse=
set ttymouse=

" to get rid of some annoying errors idk 
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_max_diagnostics_to_display = 0


" for solarized light, to go bck need to change iterm2 pref profile
"syntax enable
"set background=light
"colorscheme solarized

