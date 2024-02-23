return {
  {
    "echasnovski/mini.pairs",
    enabled = false,
    -- opts = {
    --   mappings = {
    --     ["<"] = { action = "open", pair = "<>", neigh_pattern = "[^\\]." },
    --     [">"] = { action = "close", pair = "<>", neigh_pattern = "[^\\]." },
    --   },
    -- },
  },
  {
    "altermo/ultimate-autopair.nvim",
    event = { "InsertEnter", "CmdlineEnter" },
    branch = "v0.6", --recommended as each new version will have breaking changes
    opts = {
      --Config goes here
    },
  },
}
