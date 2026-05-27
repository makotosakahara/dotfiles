return {
  {
    -- https://www.lazyvim.org/plugins/colorscheme#catppuccin
    "catppuccin",
    opts = {
      flavour = "mocha",
      -- Set `:terminal` colors, as in folke/tokyonight.nvim.
      term_colors = true,
      styles = {
        -- NOTE: Use italics for auxiliary text only, not code.
        conditionals = {},
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-nvim",
    },
  },
}
