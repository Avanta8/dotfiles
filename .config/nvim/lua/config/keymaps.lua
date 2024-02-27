-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- local function map(mode, lhs, rhs, opts)
--   local keys = require("lazy.core.handler").handlers.keys
--   ---@cast keys LazyKeysHandler
--   -- do not create the keymap if a lazy keys handler exists
--   if not keys.active[keys.parse({ lhs, mode = mode }).id] then
--     opts = opts or {}
--     opts.silent = opts.silent ~= false
--     if opts.remap and not vim.g.vscode then
--       opts.remap = nil
--     end
--     vim.keymap.set(mode, lhs, rhs, opts)
--   end
-- end

----
-- Remap <leader>c to <leader>l
local Util = require("lazyvim.util")

vim.keymap.del("n", "<leader>l")

vim.keymap.del({ "n", "v" }, "<leader>cf")
vim.keymap.set({ "n", "v" }, "<leader>lf", function()
  Util.format({ force = true })
end, { desc = "Format" })

vim.keymap.del("n", "<leader>cd")
vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
----

vim.keymap.set("n", "<leader>h", "<cmd>noh<cr><esc>", { desc = "Clear hlsearch" })

vim.keymap.set("n", "<c-_>", "gcc", { desc = "Comment line", remap = true })
vim.keymap.set("v", "<c-_>", "gcgv", { desc = "Comment selection", remap = true })

vim.keymap.set("!", "<c-h>", "<c-w>")
vim.keymap.set("i", "<c-del>", "<space><esc>ce")

-- Remap for visual block mode
vim.keymap.set("n", "<leader>v", "<c-v>")

-- Remap record macro to Q
vim.keymap.set("n", "Q", "q")
vim.keymap.set("n", "q", "<nop>")

-- Paste without overwriting yank register.
vim.keymap.set("x", "P", '"_dP')
vim.keymap.set("x", "<leader>p", '"_dP')

-- Delete without overwriting yank register.
vim.keymap.set({ "n", "x" }, "<leader>d", '"_d')
vim.keymap.set({ "n", "x" }, "<leader>D", '"_D')

-- Change without overwriting yank register.
vim.keymap.set({ "n", "x" }, "<leader>c", '"_c')
vim.keymap.set({ "n", "x" }, "<leader>C", '"_C')
