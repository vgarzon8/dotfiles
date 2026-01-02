-- Improve viewing of Markdown files
return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    -- 'nvim-mini/mini.nvim', -- if using mini.nvim suite
    -- 'nvim-mini/mini.icons', -- if using standalone mini plugins
    'nvim-tree/nvim-web-devicons', -- if using nvim-web-devicons
  },
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {},
}

-- vim: ts=2 sts=2 sw=2 et
