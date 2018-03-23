let $PYTHONUNBUFFERED=1
let g:asyncrun_open = 8
" Stop job.
nnoremap <silent><C-c> :AsyncStop<CR>
" Quit quickfix.
au FileType qf nnoremap <silent><buffer>q :quit<CR>
" Run python.
noremap <silent><leader>p :AsyncRun -raw python %<CR>
