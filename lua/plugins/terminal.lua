return {
  {
    "akinsho/toggleterm.nvim",
    opts = {
      size = 20,
      open_mapping = [[<leader>t]],
      direction = "horizontal",
    },
    version = "*",
    keys = {
      -- Map <leader>t to open terminal in Normal mode only
      { "<leader>t", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal", mode = "n" },
      -- Optionally, remove the Insert mode mapping if it exists
      { "<leader>t", false, mode = "i" },
    },
  },
}
