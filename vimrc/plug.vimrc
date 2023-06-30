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
" Plug 'valloric/youcompleteme'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'lervag/vimtex'
Plug 'easymotion/vim-easymotion'
" Track the engine.
" Plug 'sirver/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'davidhalter/jedi-vim'
call plug#end()
