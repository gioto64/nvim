local dracula = require("dracula")
dracula.setup({
  -- use transparent_bg
  transparent_bg = true, -- default false

  -- set italic comment
  italic_comment = true, -- default false
})

vim.cmd[[colorscheme dracula]]
