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
" Unhighlight search matches.
nnoremap <ESC> <ESC> :nohlsearch<CR>
" Toggle folds.
nnoremap <leader><space> zA

" Open buffers.
nnoremap : :Buffers<CR>
" Open files.
nnoremap <M-f> :Files<CR>
" Delete the current buffer and preserve the current window.
nnoremap <M-q> :Sayonara!<CR>
" Resize vim windows.
nnoremap <C-e> :WinResizerStartResize<CR>
