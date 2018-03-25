let g:lightline = {
\  'colorscheme': 'onedark',
\  'active': {
\    'left': [ [ 'mode', 'paste' ],
\              [ 'fugitive', 'filename' ] ]
\  },
\  'component': { 'lineinfo': "\ue0a1%3l:%-2v" },
\  'component_function': {
\    'fugitive': 'LightlineFugitive',
\    'filename': 'LightlineFilename',
\    'fileformat': 'LightlineFileformat',
\    'filetype': 'LightlineFiletype',
\  },
\  'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
\  'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
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

function! LightlineFugitive()
  if exists('*fugitive#head')
    let branch = fugitive#head()
    return branch !=# '' ? "\ue0a0".branch : ''
  endif
  return ''
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

set laststatus=2
set noshowmode
