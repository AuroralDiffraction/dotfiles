" Key settings for VIM

set timeoutlen=500 " Set timeout length to 500 ms

" Key remaps
inoremap kj <Esc>
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d

" Leader key settings
let mapleader=","
map <leader>t :NERDTreeToggle<CR>
map <leader>n :bn<CR>
map <leader>m :bp<CR>
map <leader>d :bd<CR>
map <leader>w :w<CR>
map <leader>f :FZF<CR>
map <leader>p <ESC>"*p

