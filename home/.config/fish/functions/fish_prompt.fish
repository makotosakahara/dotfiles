function fish_prompt
    echo (set_color brred)"$USER"(set_color normal)' at '(set_color brmagenta)(prompt_hostname)(set_color normal)' in '(set_color brgreen)(prompt_pwd)' '
    echo -n (set_color normal)↪' '
end
