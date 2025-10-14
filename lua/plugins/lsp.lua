return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = { typeCheckingMode = "off", ignore = "*", autoImportCompletions = true },
            },
          },
        },
        ruff_lsp = {},
      },
    },
  },
}
