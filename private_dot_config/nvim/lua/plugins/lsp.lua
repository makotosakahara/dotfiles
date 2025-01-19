-- NOTE: Ruff is excellent, but it still requires Pyright for type checking, completion, hover, goto, etc.

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- https://github.com/astral-sh/ruff-lsp/issues/384#issuecomment-2038623937
      pyright = {
        settings = {
          pyright = {
            disableOrganizeImports = true,
            disableTaggedHints = true,
          },
          python = {
            analysis = {
              diagnosticSeverityOverrides = {
                -- https://github.com/microsoft/pyright/blob/main/docs/configuration.md#type-check-diagnostics-settings
                reportUndefinedVariable = "none",
              },
            },
          },
        },
      },
    },
  },
}
