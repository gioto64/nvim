require'lspconfig'.racket_langserver.setup{
  cmd = { "racket", "--lib", "racket-langserver" },
  filetypes = { "racket", "scheme" },
  single_file_support = true,
}
