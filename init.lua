-- Displays line numbers relative to current position
-- Useful to quick jump to certain lines
vim.opt.number = true
vim.opt.relativenumber = true

-- Format related options
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- I don't want \t characters
vim.opt.expandtab = true

require('plugins')
require('mason-config')
require('clangd')
require('code-completion')
require('file-tree')
require('custom-maps')
require('styling')
require('syntax-highlight')
require('file-finder')
require('statusbar')
require('blank-space')
require('autopair')
require('floating-terminal')
require('linter')
