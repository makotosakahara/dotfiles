let s:hooks = neobundle#get_hooks('SimpylFold')
function! s:hooks.on_source(bundle)
    let g:SimpylFold_docstring_preview = 1
    hi Folded guibg='#282828' guifg='#BA8BAF'
endfunction
