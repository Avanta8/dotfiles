return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Don't configure dartls. It will be configured by akinsho/flutter-tools.nvim.
        dartls = {},
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- dart format is really slow
        -- dart = { "dart_format" },
      },
    },
  },
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = true,
    opts = {
      widget_guides = {
        enabled = true,
      },
      closing_tags = {
        enabled = true,
      },
    },
  },
  {
    -- Even with the attempted fixes, treesitter for dart is still very slow.
    -- Don't use it.
    "nvim-treesitter/nvim-treesitter",
    opts = {
      indent = {
        disable = { "dart" },
      },
      incremental_selection = {
        disable = { "dart" },
      },
      textobjects = {
        select = {
          disable = { "dart" },
        },
      },

      -- ensure_installed = {
      --   "dart",
      -- },
    },
  },
}
