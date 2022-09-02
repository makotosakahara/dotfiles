function fish_prompt
    echo (set_color brgreen)"$USER"'@'(prompt_hostname)' 🐍'"$CONDA_DEFAULT_ENV"
    echo -n (set_color brgreen)(prompt_pwd)' '
    set_color normal
end
