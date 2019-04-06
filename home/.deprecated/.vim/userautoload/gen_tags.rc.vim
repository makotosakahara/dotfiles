let $GTAGSLIBPATH=$HOME . '/.pyenv/versions/miniconda3-latest/lib/python3.6/'
" Disable ctags support.
let g:loaded_gentags#ctags = 1
let g:gen_tags#gtags_auto_gen = 1
autocmd User GenTags#GtagsLoaded nnoremap gd <c-]>
