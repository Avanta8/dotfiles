return {
  {
    -- Using my fork instead because the original plugin is broken
    -- for wsl if you append Windows path disabled.
    "Avanta8/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    -- This is a workaround for the original plugin, but this ofc
    -- it breaks for other platforms.
    -- config = function()
    --   vim.api.nvim_exec2(
    --     [[
    --     function! g:OpenBrowser(url)
    --       silent exec '!"/mnt/c/Windows/System32/cmd.exe" /c start'a:url
    --     endfunction
    --   ]],
    --     {}
    --   )
    --   vim.g.mkdp_browserfunc = "g:OpenBrowser"
    -- end,
  },
}
