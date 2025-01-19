local wezterm = require("wezterm")
local config = wezterm.config_builder()

if wezterm.target_triple:find("windows") then
	config.default_domain = "WSL:Ubuntu"
end
config.window_background_opacity = 0.9
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
config.window_decorations = "RESIZE"

-- Colorscheme.
config.color_scheme = "Catppuccin Mocha"

-- Fonts.
config.font = wezterm.font("Hack Nerd Font Mono")
config.font_size = 16

-- Cursor.
config.default_cursor_style = "BlinkingBar"
config.force_reverse_video_cursor = true

-- Keybindings.
-- NOTE: No need to emulate tmux. LazyVim is sufficient.

return config
