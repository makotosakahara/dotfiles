let mapleader = ','
" Use colon instead of semicolon.
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
" Reverse indent.
inoremap <S-Tab> <C-d>
" Move cursor by display lines when wrapping.
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j
nnoremap <Down> gj
nnoremap <Up> gk
" Move between buffers.
nnoremap <silent><C-n> :bnext<CR>
nnoremap <silent><C-p> :bprev<CR>
" Move between windows.
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-h> <C-w>h
nnoremap <M-l> <C-w>l
" Unhighlight.
nnoremap \q :nohlsearch<CR>
