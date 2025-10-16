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
        html = {
          filetypes = { "html", "htmldjango", "django-html" },
        },
        djlsp = {
          init_options = {
            django_settings_module = "C:/Users/punis/Code/lapin_webapp/core/settings",
          },
        },
      },
    },
  },
}
