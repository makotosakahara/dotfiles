" Move cursor by display lines when wrapping.
" https://github.com/vscode-neovim/vscode-neovim/issues/58
" https://github.com/vscode-neovim/vscode-neovim/issues/58#issuecomment-630551787
nmap k gk
nmap j gj
nmap <Up> gk
nmap <Down> gj

# Folding
nnoremap za :call VSCodeNotify('editor.toggleFold')<CR>
