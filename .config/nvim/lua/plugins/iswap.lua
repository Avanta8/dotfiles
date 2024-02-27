return {
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>i"] = { name = "+iswap" },
      },
    },
  },
  {
    "mizlan/iswap.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      { "<leader>is", "<cmd>ISwap<cr>", desc = "ISwap" },
      { "<leader>iw", "<cmd>ISwapWith<cr>" },
      { "<leader>in", "<cmd>ISwapNode<cr>" },

      { "<leader>im", "<cmd>IMove<cr>" },
      { "<leader>ie", "<cmd>IMoveWith<cr>" },
      { "<leader>ij", "<cmd>IMoveNode<cr>" },
    },
  },
}
