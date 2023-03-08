-- file detection
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = {"*.racket", "*.rkt"},
  command = "set filetype=racket", 
})

-- fetch keymap
local map = vim.api.nvim_set_keymap

-- map the key n to run the command :NvimTreeToggle
map('n', '<C-n>', [[:NvimTreeToggle<CR>]], {})

-- update leader key to ,
vim.g.mapleader = ","

-- C++ auto run/compile code
vim.api.nvim_create_autocmd({"FileType"}, {
  pattern = {"cpp"},
  callback = function()
    -- run and compile with given input/output files
    map('n', '<F7>', [[:FloatermNew --autoclose=0 g++ -std=c++17 -O3 % -o %< && ./%< < ]], {})
    -- just compile
    map('n', '<F8>', [[:FloatermNew! --name=cppcompile --autoclose=0 g++ -std=c++17 -Wall -Wextra -Wshadow -Wunused -fsanitize=address,undefined,signed-integer-overflow -g % -o %< <CR>]], {})
    -- run and compile
    map('n', '<F9>', [[:FloatermNew --autoclose=0 g++ -std=c++17 -O3 % -o %< && ./%< <CR>]], {})
  end
})

-- racket auto run code
vim.api.nvim_create_autocmd({"FileType"}, {
  pattern = {"racket"},
  callback = function()
    -- run
    map('n', '<F9>', [[:FloatermNew --autoclose=0 racket % <CR>]], {})
  end
})
