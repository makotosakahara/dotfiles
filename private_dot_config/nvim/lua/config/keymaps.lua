-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- Ergonomic Ex commands.
keymap.set({ "n", "v" }, ";", ":")
keymap.set({ "n", "v" }, ":", ";")

-- Exit terminal mode.
keymap.set("t", "<Esc>", [[<C-\><C-n>]])
-- Allow window commands from terminal mode.
keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]])
