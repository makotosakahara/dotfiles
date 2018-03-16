"Stop the highlighting
nnoremap <ESC><ESC> :nohlsearch<CR>
"------------------------------
"Window and buffer operation
nnoremap s <Nop>
"Split horizontally
nnoremap sh :<C-u>sp<CR>
"Split Vertically
nnoremap sv :<C-u>vs<CR>
"Switch to the next or previous buffer
nnoremap <silent>bp :bprevious<CR>
nnoremap <silent>bn :bnext<CR>
