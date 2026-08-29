-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<C-y>", "<Cmd>redo<CR>", { noremap = true, silent = true })
-- Focus the filetree window
vim.keymap.set("n", "<leader>z", "<C-w>w", { noremap = true, silent = true })
-- Close the current buffer (preserves window layout)
vim.keymap.set("n", "<C-k>", function()
  Snacks.bufdelete()
end, { noremap = true, silent = true, desc = "Delete Buffer" })

-- Numbered snacks terminals, keyed by the unshifted French-keyboard chars that
-- sit on the number row (& é " '), so no Shift is needed. Same root cwd as
-- <leader>ft, so <leader>t& is the very terminal <leader>ft opens;
-- <leader>té/t"/t' are independent extra terminals.
for i, key in ipairs({ "&", "é", '"', "'" }) do
  vim.keymap.set("n", "<leader>t" .. key, function()
    Snacks.terminal.toggle(nil, { count = i, cwd = LazyVim.root() })
  end, { desc = "Toggle Terminal " .. i })
end
