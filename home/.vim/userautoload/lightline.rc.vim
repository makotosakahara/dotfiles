let g:lightline = {
\  'colorscheme': 'challenger_deep',
\  'active': {
\    'left': [ [ 'mode', 'paste' ],
\              [ 'filename' ] ],
\    'right': [ [ 'fileencoding' ], [ 'filetype' ], [ 'coc_error' , 'coc_warning' , 'coc_hint' ] ]
\  },
\  'component_function': {
\    'filename': 'LightlineFilename',
\    'filetype': 'LightlineFiletype',
\  },
\ 'component_expand': {
\   'coc_error'        : 'LightlineCocErrors',
\   'coc_warning'      : 'LightlineCocWarnings',
\   'coc_hint'         : 'LightlineCocHints',
\ },
\ 'component_type': {
\   'coc_error'        : 'error',
\   'coc_warning'      : 'warning',
\   'coc_hint'         : 'hint',
\  },
\}
"\ 'separator': { 'left': "\ue0c4", 'right': "\ue0c5" },
"\ 'subseparator': { 'left': "\ue0c4", 'right': "\ue0c5" },

let g:coc_status_error_sign = "🤪"
let g:coc_status_warning_sign = "🤢"
let g:coc_status_hint_sign = "😑"

function! s:lightline_coc_diagnostic(kind) abort
  let info = get(b:, 'coc_diagnostic_info', 0)
  if empty(info) || get(info, a:kind, 0) == 0
    return ''
  endif
  let sign = get(g:, 'coc_status_' . a:kind . '_sign', '')
  return printf('%s %d', sign, info[a:kind])
endfunction

function! LightlineCocErrors() abort
  return s:lightline_coc_diagnostic('error')
endfunction

function! LightlineCocWarnings() abort
  return s:lightline_coc_diagnostic('warning')
endfunction

function! LightlineCocHints() abort
  return s:lightline_coc_diagnostic('hint')
endfunction

autocmd User CocDiagnosticChange call lightline#update()

function! LightlineModified()
  return &ft =~ 'help\|vimfiler' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &readonly ? "\ue0a2" : ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
  \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
  \  &ft == 'unite' ? unite#get_status_string() :
  \  &ft == 'vimshell' ? vimshell#get_status_string() :
  \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
  \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

set laststatus=2
set noshowmode
