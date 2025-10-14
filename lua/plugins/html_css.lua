-- stylua: ignore
if true then return {} end

-- Apparently this thing is supposed to help for css files inside html/django files.
return {
  "Jezda1337/nvim-html-css",
  dependencies = { "hrsh7th/nvim-cmp", "saghen/blink.cmp", "nvim-treesitter/nvim-treesitter" },
  opts = {
    enable_on = { -- Example file types
      "html",
      "htmldjango",
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
}
