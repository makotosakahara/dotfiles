let g:tex_flavor = "tex"

let s:hooks = neobundle#get_hooks('vimtex')
function! s:hooks.on_source(bundle)
    " Enable vimtex.
    let g:vimtex_enabled = 1
    " Folding.
    let g:latex_fold_enabled = 1
    " Auto compiling using latexmk.
    let g:latex_latexmk_enabled = 1
    " let g:latex_latexmk_options = '-pdfdvi'
    " let g:latex_latexmk_continuous = 1
    " let g:latex_latexmk_background = 1
    " neocomplete.
    if !exists('g:neocomplete#sources#omni#input_patterns')
        let g:neocomplete#sources#omni#input_patterns = {}
    endif
    let g:neocomplete#sources#omni#input_patterns.tex =
    \ '\v\\%('
    \ . '\a*cite\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
    \ . '|\a*ref%(\s*\{[^}]*|range\s*\{[^,}]*%(}\{)?)'
    \ . '|hyperref\s*\[[^]]*'
    \ . '|includegraphics\*?%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
    \ . '|%(include%(only)?|input)\s*\{[^}]*'
    \ . '|\a*(gls|Gls|GLS)(pl)?\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
    \ . '|includepdf%(\s*\[[^]]*\])?\s*\{[^}]*'
    \ . '|includestandalone%(\s*\[[^]]*\])?\s*\{[^}]*'
    \ . ')'
endfunction

