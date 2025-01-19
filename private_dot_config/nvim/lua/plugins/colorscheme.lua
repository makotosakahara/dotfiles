return {
  {
    "catppuccin",
    opts = {
      flavour = "mocha",
      -- Follow the folke/tokyonight.nvim default options.
      -- https://github.com/folke/tokyonight.nvim?tab=readme-ov-file#%EF%B8%8F-configuration.
      term_colors = true,
      styles = {
        conditionals = {},
        keywords = { "italic" },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
