if 0 | endif

if has('vim_starting')
    if &compatible
        set nocompatible
    endif
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
" ------------------------------
" Manager
NeoBundleFetch 'Shougo/neobundle.vim'
" ------------------------------
" Extension
NeoBundle 'Shougo/vimproc.vim', {
\   'build': {
\       'windows':  'tools\\update-dll-mingw',
\       'cygwin':   'make -f make_cygwin.mak',
\       'mac':      'make',
\       'linux':    'make',
\       'unix':     'gmake'
\   }
\}
" ------------------------------
" Shell
NeoBundleLazy 'Shougo/vimshell.vim', {
\   'autoload': {
\       'commands': ['VimShell']
\   },
\   'depends': ['Shougo/vimproc.vim']
\}
" ------------------------------
" Runner
NeoBundle 'thinca/vim-quickrun'
" ------------------------------
" Edit
if has('lua')
    NeoBundle 'Shougo/neocomplete'
    NeoBundle 'Shougo/neosnippet'
    NeoBundle 'Shougo/neosnippet-snippets'
endif
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'thinca/vim-template'
NeoBundle 'itchyny/lightline.vim'
" ------------------------------
" Filer
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler.vim'
" ------------------------------
" Visual
NeoBundle 'ryanoasis/vim-devicons', {
\   'depends': ['Shougo/unite.vim',
\               'Shougo/vimfiler.vim',
\               'itchyny/lightline.vim']
\}
" ------------------------------
" Theme
if has('gui_running')
    NeoBundle 'chriskempson/base16-vim'
    NeoBundle 'joshdick/onedark.vim'
end
" ------------------------------
" Git
NeoBundle 'tpope/vim-fugitive'
" ------------------------------
" LaTeX
NeoBundleLazy 'lervag/vimtex', {
\   'autoload': {
\       'filetypes': ['tex'],
\   }
\}
" ------------------------------
" Python
"NeoBundleLazy 'davidhalter/jedi-vim', {
"\   'autoload': {
"\       'filetypes': ['python'],
"\   }
"\}
"NeoBundleLazy 'tell-k/vim-autopep8', {
"\   'autoload': {
"\       'filetypes': ['python'],
"\   }
"\}
"NeoBundleLazy 'tmhedberg/SimpylFold', {
"\   'autoload': {
"\       'filetypes': ['python'],
"\   }
"\}
" ------------------------------
call neobundle#end()
filetype plugin indent on
syntax enable
NeoBundleCheck

runtime! userautoload/*.vim

