-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.shiftwidth = 4

-- Use a blinking bar cursor in insert, command-line, and terminal modes.
-- Omit a cursor highlight group to use the host terminal's default cursor colors.
-- See https://neovim.io/doc/user/options/#'guicursor' for details.
opt.guicursor = "n-v-sm:block,i-c-ci-t-ve:ver25-blinkon500-blinkoff500,r-cr-o:hor20"

vim.g.lazyvim_python_lsp = "ty"
