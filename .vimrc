set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'arcticicestudio/nord-vim'
Plugin 'mattn/emmet-vim'
Plugin 'vim-scripts/dbext.vim'

call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf-8
syntax on
let g:airline#extensions#tabline#enabled = 1

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map  <F2> :bn<CR>
map  <F3> :write\|:bdelete<CR>
let g:airline_powerline_fonts = 1

colorscheme nord

set number
set splitbelow
set splitright
set expandtab
" CommandT

let g:CommandTTraverseSCM = 'dir'

" dbext
let g:dbext_default_profile_PG = 'type=PGSQL:user=[USER]:passwd=[PASS]:dbname=[DATABASE]'
let g:dbext_default_profile = "PG"
