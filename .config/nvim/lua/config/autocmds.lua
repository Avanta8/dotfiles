-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("VimLeave", {
  group = vim.api.nvim_create_augroup("RestoreCursorShapeOnExit", { clear = true }),
  command = "set guicursor=a:ver80-blinkwait700-blinkoff400-blinkon250",
})

-- Set indentation to 2 spaces
vim.api.nvim_create_autocmd("Filetype", {
  group = vim.api.nvim_create_augroup("setIndent", { clear = true }),
  pattern = {
    "css",
    "html",
    "dart",
    "javascript",
    "lua",
    "markdown",
    "md",
    "typescript",
    "scss",
    "xml",
    "xhtml",
    "yaml",
  },
  command = "setlocal shiftwidth=2 tabstop=2",
})
