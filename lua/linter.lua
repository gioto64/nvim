local lint = require('lint')
-- Add Linter by File type
lint.linters_by_ft = {
  cpp = {'cpplint'},
  c = {'clangd'},
}
-- Get cpplint to configure it
local cpplint = require("lint.linters.cpplint")
cpplint.args = {
  'run',
  '--out-format',
  'json',
}

-- Add TryLint on bufferwrite as a auto command
-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
--  callback = function()
--   require("lint").try_lint()
--  end,
--})
