set fish_greeting

if status --is-interactive
    set -x PATH "$PYENV_ROOT/shims" $PATH
    set -x PYENV_SHELL fish
end
