function fish_prompt
    if test -n "$SSH_TTY"
        echo -n (set_color red)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end

    echo (set_color blue)(prompt_pwd)

    set_color -o
    if test "$USER" = 'root'
        echo -n (set_color red)'# '
    end
    echo -n (set_color green)\ufb0c' '
    set_color normal
end