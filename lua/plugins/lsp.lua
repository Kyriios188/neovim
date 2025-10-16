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
        -- doesn't work
        html = {
          filetypes = { "html", "htmldjango", "django-html" },
        },
        -- doesn't work either
        djlsp = {
          init_options = {
            env_directories = {
              home .. "\\venv",
              "\\venv\\",
              "\\venv\\",
              "venv",
              "venv\\",
              "venv/",
              "\\venv",
              "\\venv\\",
              "C:/Users/punis/Code/lapin_webapp/venv/",
              "C:\\Users\\punis\\Code\\lapin_webapp\\venv\\",
              "C:\\Users\\punis\\Code\\lapin_webapp\\venv",
              "~\\Code\\lapin_webapp\\venv",
              "~\\Code\\lapin_webapp\\venv\\",
              "~/Code/lapin_webapp/venv",
              "~/Code/lapin_webapp/venv/",
            },
            django_settings_module = "core.settings",
          },
          settings = {
            djlsp = {
              env_directories = {
                home .. "\\venv",
                "\\venv\\",
                "\\venv\\",
                "venv",
                "venv\\",
                "venv/",
                "\\venv",
                "\\venv\\",
                "C:/Users/punis/Code/lapin_webapp/venv/",
                "C:\\Users\\punis\\Code\\lapin_webapp\\venv\\",
                "C:\\Users\\punis\\Code\\lapin_webapp\\venv",
                "~\\Code\\lapin_webapp\\venv",
                "~\\Code\\lapin_webapp\\venv\\",
                "~/Code/lapin_webapp/venv",
                "~/Code/lapin_webapp/venv/",
              },
              django_settings_module = "core.settings",
            },
          },
        },
      },
    },
  },
}
