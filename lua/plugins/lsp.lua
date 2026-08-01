local home = vim.fn.getcwd()
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
        djlsp = {
          init_options = {
            env_directories = { home },
            django_settings_module = "core.settings",
          },
          settings = {
            djlsp = {
              env_directories = { home },
              django_settings_module = "core.settings",
            },
          },
        },
      },
    },
  },
}
