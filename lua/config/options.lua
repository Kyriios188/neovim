-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.lazyvim_python_lsp = "pyrefly"
vim.g.lazyvim_python_ruff = "ruff"
-- Disable animations when moving up / down
vim.g.snacks_animate = false

vim.opt.relativenumber = false
vim.opt.showtabline = 0

-- Use Git Bash as the integrated terminal shell instead of cmd.exe
-- Use the 8.3 short path to avoid spaces in "Program Files"
if vim.fn.executable("C:/PROGRA~1/Git/bin/bash.exe") == 1 then
  vim.opt.shell = "C:/PROGRA~1/Git/bin/bash.exe"
  vim.opt.shellcmdflag = "-c"
  vim.opt.shellredir = "2>&1 | tee %s"
  vim.opt.shellpipe = "2>&1 | tee %s"
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
end
