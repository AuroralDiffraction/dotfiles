" General settings in VIM

" Set language to English
set langmenu=en_US
let $LANG = 'en_US'

" Encoding
set encoding=utf-8

" Set colorscheme to Gruvbox
autocmd vimenter * ++nested colorscheme gruvbox
:set background=dark

" Hide menu bars
:set guioptions-=T
:set guioptions-=m
:set guioptions-=r
:set guioptions-=L

" For some plugins to work correctly
set nocompatible
filetype plugin on
syntax on

" Set tab to 4 spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Line numbers
:set number
:set relativenumber

" Font
set guifont=Consolas:h15

" Backup and swap files
set backupdir=~/temp/.vim/.backup//
set directory=~/temp/.vim/.swap//
set undodir=~/temp/.vim/.undo//

" Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim
