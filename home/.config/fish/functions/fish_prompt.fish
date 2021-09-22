function fish_prompt
    echo (set_color magenta)"$USER"' '(prompt_hostname)' 🐍 '"$CONDA_DEFAULT_ENV"
    echo -n (set_color green)(prompt_pwd)' '
    set_color normal
end
