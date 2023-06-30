" Plugin specific settings in VIM

" Automatically close NERDTree when you open a file
let NERDTreeQuitOnOpen=1

" vim-airline
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#vimtex#enabled = 1 
let g:airline#extensions#vimtex#compiled = "c₁"
let g:airline#extensions#vimtex#sub_main = "m"
let g:airline#extensions#vimtex#main = ""

"ultiSnip Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
    let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Coc
" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
     \ coc#pum#visible() ? coc#pum#next(1) :
     \ CheckBackspace() ? "\<Tab>" :
     \ coc#refresh()

let g:coc_snippet_next = '<tab>'
imap <C-j> <Plug>(coc-snippets-expand-jump)

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Use both `UltiSnips` and `MySnippets` as snippet directories
 let g:UltiSnipsSnippetDirectories=["$HOME/vimfiles/plugged/vim-snippets/UltiSnips", "$HOME/vimfiles/plugged/vim-snippets/MySnippets"]

" Spell check using Coc-spell-checker
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

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

" Gitgutter
set updatetime=100
"let g:gitgutter_set_sign_backgrounds = 1
highlight! link SignColumn LineNr

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_verilog_checkers = ['iverilog']
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }

" Easyclip
" Remove default mapping of m to x
let g:EasyClipUseCutDefaults = 0
nmap x <Plug>MoveMotionPlug 
xmap x <Plug>MoveMotionXPlug 
nmap xx <Plug>MoveMotionLinePlug

" VimTex
" Disable continuous compiling
let g:vimtex_compiler_latexmk = {'continuous': 0}
