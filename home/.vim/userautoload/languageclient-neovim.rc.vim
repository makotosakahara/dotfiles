set hidden
set signcolumn=yes

" pip install black flake8 isort
" pip install python-language-server
" pip install pyls-black pyls-isort
" npm i -g bash-language-server
" npm i -g yaml-language-server
let g:LanguageClient_serverCommands = {
\   'python': ['pyls'],
\   'sh': ['bash-language-server', 'start'],
\   'yaml': ['yaml-language-server', '--stdio']
\}
" debugging
"\ 'python': ['pyls', '-vv', '--log-file', '/tmp/pyls.log'],
let g:LanguageClient_settingsPath = $HOME . '/.vim/settings.json'
" XXX
" let g:ale_echo_cursor = 0

" Hover
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" Go to definition
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" References
nnoremap <silent> fr :call LanguageClient#textDocument_references()<CR>

" Navigation
nnoremap <silent> <C-k> :cprevious<CR>
nnoremap <silent> <C-j> :cnext<CR>

" Fix on save
au BufWritePre *.py :call LanguageClient#textDocument_formatting_sync()
