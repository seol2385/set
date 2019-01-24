set nocompatible              " required
filetype off                  " required
set nu

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')
 " let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'
 Plugin 'vim-airline/vim-airline'
 Plugin 'vim-airline/vim-airline-themes'
 Plugin 'scrooloose/nerdtree'
 Plugin 'Yggdroot/indentLine'
 Plugin 'scrooloose/syntastic'
 "Plugin 'nvie/vim-flake8' "f7
 Plugin 'vim-scripts/indentpython.vim'
"
"
" " add all your plugins here (note older versions of Vundle
" " used Bundle instead of Plugin)
"
" " ...
"
" " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
"
 "python start
 let python_highlight_all=1
 syntax on
"
" "python end
"
"
 "Nerd start
 set encoding=utf-8
 set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8,cp949,euckr
 set fileformats=unix,dos,mac
 
 
 
 let g:NERDTreeDirArrows=0
 
 let mapleader=","
 noremap <C-h> <C-w>h
 noremap <C-j> <C-w>j
 noremap <C-k> <C-w>k
 noremap <C-l> <C-w>l
 nnoremap <C-F> :NERDTreeFind<CR>
 nnoremap <Leader>n :NERDTreeToggle<CR>
 "Nerd end
"
"
" "powerline
"
" "powerline
"
"
" "airline start
 let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
 let g:airline_theme='hybrid'
 set laststatus=2 " turn on bottom bar
" "airline end
"
"
" "Syntastic start
 execute pathogen#infect()
"
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*
"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_flake8_args = "--ignore=E501"
nnoremap <silent> <F6> :SyntasticToggleMode<CR>
 "Syntastic end
"highlight
highlight Search ctermfg=Red
"highlight end

"indent
"let g:indentLine_color_term = 244
:set ts=8
:set sw=4
:set sts=4
xnoremap < <gv
xnoremap > >gv
"indent
"buffer move 
nnoremap <silent> <tab> :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
"
"python
nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>
