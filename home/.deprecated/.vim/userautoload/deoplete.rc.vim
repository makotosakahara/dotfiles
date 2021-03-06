" Lazy load
let g:deoplete#enable_at_startup = 0
autocmd CursorHold * call deoplete#enable()
"
let g:deoplete#auto_complete_delay = 0
let g:deoplete#enable_smart_case = 1
" Tab completion
inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}
" Disable preview
set completeopt-=preview
