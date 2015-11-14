let s:hooks = neobundle#get_hooks('jedi-vim')
function! s:hooks.on_source(bundle)
    let g:jedi#auto_initialization = 1
    let g:jedi#force_py_version = 3
    let g:jedi#use_splits_not_buffers= 'left'

    "let g:jedi#auto_vim_configuration = 1
    "let g:jedi#completions_enabled = 1

    autocmd FileType python setlocal omnifunc=jedi#completions
    let g:jedi#completions_enabled = 0
    let g:jedi#auto_vim_configuration = 0
    let g:jedi#smart_auto_mappings = 0
    if !exists('g:neocomplete#force_omni_input_patterns')
        let g:neocomplete#force_omni_input_patterns = {}
    endif
    let g:neocomplete#force_omni_input_patterns.python =
    \ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'

    " Stop preview
    autocmd FileType python setlocal completeopt-=preview
    " Prevent reload file-type plugin
    "autocmd FileType python let b:did_ftplugin = 1

    let g:jedi#goto_command = '<leader>d'
    let g:jedi#goto_assignments_command = '<leader>g'
    let g:jedi#goto_definitions_command = ''
    let g:jedi#documentation_command = 'K'
    let g:jedi#usages_command = '<leader>n'
    let g:jedi#completions_command = '<C-Space>'
    " Conflict with quickrun
    let g:jedi#rename_command = '<Leader>R'

endfunction
