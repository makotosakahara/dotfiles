" let g:lightline = {
"\  'colorscheme': 'challenger_deep',
"\  'active': {
"\    'left': [ [ 'mode', 'paste' ],
"\              [ 'filename' ] ],
"\    'right': [ [ 'fileencoding', 'filetype' ],
"\               [ 'linter_errors', 'linter_warnings' ] ]
"\  },
"\  'component_function': {
"\    'filename': 'LightlineFilename',
"\    'filetype': 'LightlineFiletype',
"\  },
"\  'component_expand': {
"\    'linter_warnings': 'lightline#ale#warnings',
"\    'linter_errors': 'lightline#ale#errors',
"\  },
"\  'component_type': {
"\    'linter_warnings': 'warning',
"\    'linter_errors': 'error'
"\  }
"\}
let g:lightline = {
\  'colorscheme': 'challenger_deep',
\  'active': {
\    'left': [ [ 'mode', 'paste' ],
\              [ 'filename' ] ],
\    'right': [ [ 'fileencoding', 'filetype' ] ]
\  },
\  'component_function': {
\    'filename': 'LightlineFilename',
\    'filetype': 'LightlineFiletype',
\  }
\}

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

" let g:lightline#ale#indicator_warnings = "\uf11a"
" let g:lightline#ale#indicator_errors = "\uf119"

set laststatus=2
set noshowmode
