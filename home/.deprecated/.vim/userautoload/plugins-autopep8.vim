let s:hooks = neobundle#get_hooks('vim-autopep8')
function! s:hooks.on_source(bundle)
    let g:syntastic_python_checkers = ['pyflakes', 'pep8']
    autocmd FileType python nnoremap <S-f> :call Autopep8()<CR>
    let g:autopep8_disable_show_diff=1
    let g:autopep8_max_line_length=79
endfunction
