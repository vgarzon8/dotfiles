return {
  -- Navigate sbetween neovim and tmux panes / splits using consistent key mappings
  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
      'TmuxNavigatorProcessList',
    },
    keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
    },
  },

  -- GitHub Copilot plugin -- requires node.js
  { 'github/copilot.vim' },

  -- Improve viewing of Markdown files
  {
    'MeanderingProgrammer/render-markdown.nvim',
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },            -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },

  -- -- Oil.nvim is a file explorer that edits the filesystem like a normal Neovim buffer
  -- {
  --   'stevearc/oil.nvim',
  --   ---@module 'oil'
  --   ---@type oil.SetupOpts
  --   opts = {},
  --   -- Optional dependencies
  --   dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  --   -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  --   config = function()
  --     require('oil').setup {}
  --     vim.keymap.set('n', '-', '<CMD>Oil --float<CR>', { desc = 'Open parent directory' })
  --   end,
  -- },

  -- -- Snacks.nvim is a collection of small utilities for Neovim
  -- {
  --   'folke/snacks.nvim',
  --   priority = 1000,
  --   lazy = false,
  --   ---@type snacks.Config
  --   opts = {
  --     -- your configuration comes here
  --     -- or leave it empty to use the default settings
  --     -- refer to the configuration section below
  --     bigfile = { enabled = false },
  --     dashboard = { enabled = true },
  --     indent = { enabled = false },
  --     input = { enabled = false },
  --     notifier = { enabled = false },
  --     quickfile = { enabled = false },
  --     scroll = { enabled = false },
  --     statuscolumn = { enabled = false },
  --     words = { enabled = false },
  --   },
  -- },
}
