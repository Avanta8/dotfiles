return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      -- colorscheme = "dracula-soft",
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    opts = {
      -- flavour = "mocha",
      -- flavour = "latte",
      flavour = "macchiato",
    },
  },
  {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    lazy = false,
    opts = {
      colors = {
        selection = "#262833",
      },
      theme = "dracla-soft",
    },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    opts = {
      variant = "main",
    },
  },
  -- {
  --   "nvim-lualine/lualine.nvim",
  --   opts = function(_, opts)
  --     opts.options.theme = "dracula-nvim"
  --   end,
  -- },
}
