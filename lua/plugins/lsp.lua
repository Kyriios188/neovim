return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        pyrefly = {
          init_options = {
            pyrefly = {
              -- PyCharm-like leniency: only parse errors / undefined names / high-confidence
              -- issues. Skips unannotated defs and never infers return types, so files don't
              -- light up over type-hint details.
              typeCheckingMode = "basic",
            },
          },
        },
      },
    },
  },
}
