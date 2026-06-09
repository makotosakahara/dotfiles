function fish_user_key_bindings
    # Emacs-style only in insert mode, by design.
    fish_default_key_bindings -M insert
    fish_vi_key_bindings --no-erase

    # Use plain bindings. To list the preset bindings, use the following command:
    #   bind --preset | grep fish_clipboard
    bind y,y fish_clipboard_copy
    bind p 'set -g fish_cursor_end_mode exclusive' forward-char 'set -g fish_cursor_end_mode inclusive' fish_clipboard_paste
    bind -M visual -m default y 'fish_clipboard_copy; commandline -f end-selection repaint-mode'
end
