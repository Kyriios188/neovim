-- djLint has no severity levels of its own, so nvim-lint's built-in linter
-- flattens every finding to INFO (easy to miss). Reuse nvim-lint's own parsing
-- but default all djlint diagnostics to WARN so they actually stand out.
local base_parser
local function djlint_parser(output, bufnr, cwd)
  base_parser = base_parser
    or require("lint.parser").from_pattern(
      [[(%d+):(%d+):(%a%d+): (.*)]],
      { "lnum", "col", "code", "message" },
      nil,
      { source = "djlint", severity = vim.diagnostic.severity.WARN },
      {}
    )
  return base_parser(output, bufnr, cwd)
end

return {
  -- Linting for Django templates via djLint. nvim-lint ships a built-in
  -- `djlint` definition, so we only need to map it to the filetype.
  -- Requires the `djlint` binary on PATH (e.g. `uv tool install djlint`).
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        htmldjango = { "djlint" },
      },
      linters = {
        -- nvim-lint pipes the buffer over stdin with no filename, so djlint
        -- can't auto-detect the Django profile and skips all T0xx template
        -- rules. Force the profile so template errors are actually reported,
        -- and promote structural/syntax findings to ERROR severity.
        djlint = {
          prepend_args = { "--profile", "django" },
          parser = djlint_parser,
        },
      },
    },
  },

  -- Optional: also let djLint auto-format templates on save (conform.nvim
  -- is LazyVim's formatter runner and already knows the `djlint` formatter).
  -- Remove this block if you only want diagnostics, not reformatting.
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        htmldjango = { "djlint" },
      },
    },
  },
}