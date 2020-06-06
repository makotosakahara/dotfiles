function fish_right_prompt
    echo -n (set_color brmagenta)"$USER"' '(set_color magenta)(prompt_hostname)
    set_color normal
end
