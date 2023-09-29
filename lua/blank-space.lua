vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

require("ibl").setup {
  {
    indent = { highlight = highlight, char = "" },
    whitespace = {
        highlight = highlight,
        remove_blankline_trail = false,
    },
    scope = { enabled = true },
  }
}
  -- old ibl setup
  -- for example, context is off by default, use this to turn it on
  --show_current_context = true,
  --show_current_context_start = true,
  --show_end_of_line = true,
  --space_char_blankline = " ",
