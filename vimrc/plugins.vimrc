" Plugin specific settings in VIM

" Automatically close NERDTree when you open a file
let NERDTreeQuitOnOpen=1

" vim-airline
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers

" VimWiki 
" Set VimWiki to markdown
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
" Custom diary template 
au BufNewFile ~/vimwiki/diary/*.md
      \ call append(0,[
      \ "# " . split(expand('%:t'),'/')[-1], "",
      \ "## Daily checklist", "- [ ] ", "",
      \ "## Todo", "- [ ] ", "",
      \ "## Notes", "" ])


" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_verilog_checkers = ['iverilog']