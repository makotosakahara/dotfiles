" ------------------------------
" Stop the highlighting
nnoremap <ESC><ESC> :nohlsearch<CR>
" ------------------------------
" Window and buffer operation
nnoremap s <Nop>
" Split horizontally
nnoremap sh :<C-u>sp<CR>
" Split Vertically
nnoremap sv :<C-u>vs<CR>
" Switch to the next or previous buffer
nnoremap <silent>bp :bprevious<CR>
nnoremap <silent>bn :bnext<CR>
" ------------------------------
" vimfiler
" NOTE: In order to avoid key mapping conflict,
"       it is necessary to map keys of vimfiler first.
" IDE mode
nmap <C-i> :VimFiler -split<CR>
imap <C-i> <ESC>:VimFiler -split<CR>
" ------------------------------
" neocomplete
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" ------------------------------
" neosnippet
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" ------------------------------
" unite
" ls (buffer)
noremap <C-P> :Unite buffer<CR>
" ls (files)
noremap <C-N> :Unite -buffer-name=file file<CR>
" Open recent
noremap <C-Z> :Unite file_mru<CR>
" quit
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
" ------------------------------
" VimShell
" Run
nnoremap <silent> vs :VimShell<CR>
" ------------------------------
