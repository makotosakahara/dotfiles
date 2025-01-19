-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- Ergonomic command-line mode.
keymap.set({ "n", "v" }, ";", ":")
keymap.set({ "n", "v" }, ":", ";")

-- https://neovim.io/doc/user/terminal.html#terminal-input.
keymap.set("t", "<Esc>", [[<C-\><C-n>]])
keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]])
