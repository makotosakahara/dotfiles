-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.shiftwidth = 4

-- https://neovim.io/doc/user/options.html#'guicursor'
-- default "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,t:block-blinkon500-blinkoff500-TermCursor"
-- XXX: Blink times seem to be ignored. The blinking configurations are dependent on the terminal ones.
opt.guicursor = "n-v-sm:block,i-ci-ve-c-t:ver25-blinkon500-blinkoff500,r-cr-o:hor20"
