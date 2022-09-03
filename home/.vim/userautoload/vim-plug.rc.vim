let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  filent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" https://github.com/junegunn/vim-plug/wiki/tips#vim-help
function! Cond(cond, ...)
    let opts = get(a:000, 0, {})
    return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-repeat'
Plug 'ggandor/lightspeed.nvim'

Plug 'folke/tokyonight.nvim', Cond(!exists('g:vscode'))

call plug#end()

if exists('g:vscode')
    " fake cursor
    highlight LightspeedCursor gui=reverse
else
    let g:tokyonight_style = "night"
    colorscheme tokyonight
endif
