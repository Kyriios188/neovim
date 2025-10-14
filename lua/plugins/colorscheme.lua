return {
  -- add kanegawa
  { "rebelot/kanagawa.nvim", name = "kanagawa", lazy = false, priority = 1000 },
  { "sainnhe/everforest", name = "everforest", lazy = false, priority = 1000 },
  { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000 },

  -- Configure LazyVim to load the scheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        vim.cmd("colorscheme everforest")
      end,
    },
  },
}
