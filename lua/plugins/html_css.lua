-- Apparently this thing is supposed to help for css files inside html/django files.
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "htmldjango",
        "django-html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "css",
        "vim",
        "yaml",
      },
    },
  },
  {
    "Jezda1337/nvim-html-css",
    dependencies = { "saghen/blink.cmp", "nvim-treesitter/nvim-treesitter" },
    opts = {
      enable_on = {
        "html",
        "htmldjango",
        "django-html",
      },
      handlers = {
        definition = {
          bind = "gd",
        },
        hover = {
          bind = "K",
          wrap = true,
          border = "none",
          position = "cursor",
        },
      },
      documentation = {
        auto_show = true,
      },
      style_sheets = {
        "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css",
      },
    },
  },
}
