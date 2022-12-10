" Key settings for VIM

set timeoutlen=500 " Set timeout length to 500 ms

" Key remaps
inoremap kj <Esc>
inoremap <C-v> <ESC>"+pa
nnoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d 

" Easier to use colon without having to press shift
nnoremap ; :

" Moves to the start and end of line using H L
nnoremap H ^
nnoremap L $

" Moving through soft-wrap lines
nnoremap j gj
vnoremap j gj
onoremap j gj
nnoremap k gk
vnoremap k gk
onoremap k gk
nnoremap 0 g0
nnoremap $ g$

" Leader key settings
let mapleader=","
map <leader>t :NERDTreeToggle<CR>
map <leader>n :bn<CR>
map <leader>m :bp<CR>
map <leader>d :bd<CR>
map <leader>w :w<CR>
map <leader>f :FZF<CR>
map <leader>p o<ESC>"*p
map <leader>j :tabn<CR>
map <leader>k :tabp<CR>
map <leader>l :tabnew<CR>
map <leader>h :tabclose<CR>
map <leader>q :q<CR>
map <leader>g :G
map <leader>b :ls<CR>:b<Space>
" Change directory to current path
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
