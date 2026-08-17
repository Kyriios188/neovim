-- Extra keymaps for the LazyVim `claudecode` extra (coder/claudecode.nvim).
-- These merge into the existing `<leader>a` (+ai) group defined by the extra.
--
-- "Interrupt" and "cycle mode" are not neovim/lazyvim features -- they are Claude
-- Code TUI actions. Inside the TUI you press <Esc> to interrupt and <S-Tab> to
-- cycle the permission mode. Here we send those exact keystrokes to the Claude
-- terminal's PTY, so the keymaps work even when you're focused in a code buffer.
--
-- NOTE: Claude Code only *cycles* permission modes (normal -> auto-accept -> plan
-- -> ...). There is no keystroke to jump directly to a specific mode, so <leader>am
-- cycles; it cannot target one mode.

--- Send raw bytes to the running Claude Code terminal, as if typed in the TUI.
---@param keys string
local function send_to_claude(keys)
  local ok, terminal = pcall(require, "claudecode.terminal")
  if not ok then
    vim.notify("claudecode.nvim is not loaded", vim.log.levels.WARN)
    return
  end
  -- submit = false: send the raw control bytes without a trailing <CR>.
  if not terminal.send_to_terminal(keys, { submit = false }) then
    vim.notify("No running Claude Code terminal to send keys to", vim.log.levels.WARN)
  end
end

-- In the Claude Code terminal window, make a single <Esc> leave terminal-insert
-- mode (LazyVim's default is <Esc><Esc>). This lets you press <Esc> and then run
-- <leader>ai, since <leader> (space) is a literal space while in terminal-insert.
-- Scoped to the Claude terminal only, so other terminals keep the normal <Esc>.
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "term://*claude*",
  callback = function(ev)
    vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { buffer = ev.buf, desc = "Leave terminal mode" })
  end,
})

return {
  "coder/claudecode.nvim",
  keys = {
    {
      "<leader>ai",
      function()
        send_to_claude("\27") -- <Esc>: interrupt whatever Claude is currently doing
      end,
      desc = "Interrupt Claude",
    },
    {
      "<leader>am",
      function()
        send_to_claude("\27[Z") -- <S-Tab>: cycle permission mode (normal / auto-accept / plan / ...)
      end,
      desc = "Cycle Claude mode",
    },
  },
}