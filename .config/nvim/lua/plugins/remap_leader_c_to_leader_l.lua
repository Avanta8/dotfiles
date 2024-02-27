return {
  {
    "folke/which-key.nvim",
    -- There's probably a better way to do this.
    opts = function(_, opts)
      local d = { name = "+code" }
      opts.defaults["<leader>l"] = d
      opts.defaults["<leader>c"] = nil
    end,
  },
  {
    "williamboman/mason.nvim",
    keys = {
      { "<leader>cm", false },
      { "<leader>lm", "<cmd>Mason<cr>", desc = "Mason" },
    },
  },
  {
    "stevearc/conform.nvim",
    keys = {
      { "<leader>cF", mode = { "n", "v" }, false },
      {
        "<leader>lF",
        function()
          require("conform").format({ formatters = { "injected" } })
        end,
        mode = { "n", "v" },
        desc = "Format Injected Langs",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    -- It's easier just to remap everything.
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()

      -- stylua: ignore
      local M = {
        { "<leader>ll", "<cmd>LspInfo<cr>", desc = "Lsp Info" },
        { "gd", function() require("telescope.builtin").lsp_definitions({ reuse_win = true }) end, desc = "Goto Definition", has = "definition" },
        { "gr", "<cmd>Telescope lsp_references<cr>", desc = "References" },
        { "gD", vim.lsp.buf.declaration, desc = "Goto Declaration" },
        { "gI", function() require("telescope.builtin").lsp_implementations({ reuse_win = true }) end, desc = "Goto Implementation" },
        { "gy", function() require("telescope.builtin").lsp_type_definitions({ reuse_win = true }) end, desc = "Goto T[y]pe Definition" },
        { "K", vim.lsp.buf.hover, desc = "Hover" },
        { "gK", vim.lsp.buf.signature_help, desc = "Signature Help", has = "signatureHelp" },
        { "<c-k>", vim.lsp.buf.signature_help, mode = "i", desc = "Signature Help", has = "signatureHelp" },
        { "<leader>la", vim.lsp.buf.code_action, desc = "Code Action", mode = { "n", "v" }, has = "codeAction" },
        {
          "<leader>lA",
          function()
            vim.lsp.buf.code_action({
              context = {
                only = {
                  "source",
                },
                diagnostics = {},
              },
            })
          end,
          desc = "Source Action",
          has = "codeAction",
        }
      }
      if require("lazyvim.util").has("inc-rename.nvim") then
        M[#M + 1] = {
          "<leader>lr",
          function()
            local inc_rename = require("inc_rename")
            return ":" .. inc_rename.config.cmd_name .. " " .. vim.fn.expand("<cword>")
          end,
          expr = true,
          desc = "Rename",
          has = "rename",
        }
      else
        M[#M + 1] = { "<leader>lr", vim.lsp.buf.rename, desc = "Rename", has = "rename" }
      end

      local count = #keys
      for i = 0, count do
        keys[i] = nil
      end

      count = #M
      for i = 0, count do
        keys[#keys + 1] = M[i]
      end
    end,
  },
}
