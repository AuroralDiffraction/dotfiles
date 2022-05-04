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
