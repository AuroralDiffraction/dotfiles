" Plug for installing VIM plugins
let g:pymode_python = 'python3'
if has('python3')
endif

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'vimwiki/vimwiki'
Plug 'svermeulen/vim-easyclip'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'valloric/youcompleteme'
Plug 'airblade/vim-gitgutter'
Plug 'lervag/vimtex'
call plug#end()
