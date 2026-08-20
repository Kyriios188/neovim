return {
  "okuuva/auto-save.nvim",
  version = "^1.0.0",
  cmd = "ASToggle",
  event = { "InsertLeave", "TextChanged" },
  opts = {
    debounce_delay = 500,
    condition = function(buf)
      if vim.b[buf].claudecode_diff_tab_name ~= nil then
        -- Don't auto-save Claude Code's proposed changes.
        return false
      end
      return vim.fn.getbufvar(buf, "&modifiable") == 1
    end,
  },
  keys = {
    { "<leader>uv", "<cmd>ASToggle<CR>", desc = "Toggle autosave" },
  },
}

