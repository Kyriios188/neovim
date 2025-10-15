return {
  -- add kanegawa
  { "rebelot/kanagawa.nvim", name = "kanagawa", lazy = false, priority = 1000 },
  { "sainnhe/everforest", name = "everforest", lazy = false, priority = 1000 },
  { "EdenEast/nightfox.nvim", name = "nightfox", lazy = false, priority = 1000 },

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
