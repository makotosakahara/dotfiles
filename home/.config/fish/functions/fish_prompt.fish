function fish_prompt
    echo (set_color brmagenta)"$USER"' '(set_color magenta)(prompt_hostname)' '(set_color red)🐍"$CONDA_DEFAULT_ENV"
    echo -n (set_color brgreen)(prompt_pwd)' '
    set_color normal
end
