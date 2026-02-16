return {
  'nvim-treesitter/nvim-treesitter-textobjects',
  branch = 'main',
  init = function()
    -- Disable entire built-in ftplugin mappings to avoid conflicts.
    -- See https://github.com/neovim/neovim/tree/master/runtime/ftplugin for built-in ftplugins.
    -- vim.g.no_plugin_maps = true

    -- Or, disable per filetype (add as you like)
    vim.g.no_python_maps = true
    -- vim.g.no_ruby_maps = true
    -- vim.g.no_rust_maps = true
    -- vim.g.no_go_maps = true
  end,
  config = function()
    require('nvim-treesitter-textobjects').setup {
      select = {
        enable = true,
        -- Automatically jump forward to textobj, similar to targets.vim
        lookahead = true,
        -- selection_modes = {
        --   ['@parameter.outer'] = 'v', -- charwise
        --   ['@function.outer'] = 'V', -- linewise
        --   ['@class.outer'] = '<c-v>', -- blockwise
        -- },
      },
      move = {
        enable = true,
        set_jumps = true, -- whether to set jumps in the jumplist
      },
    }

    -- select keymaps
    local ts_textobjects_select = require 'nvim-treesitter-textobjects.select'

    vim.keymap.set({ 'x', 'o' }, 'am', function()
      ts_textobjects_select.select_textobject('@function.outer', 'textobjects')
    end, { desc = 'Outer method / func def' })
    vim.keymap.set({ 'x', 'o' }, 'im', function()
      ts_textobjects_select.select_textobject('@function.inner', 'textobjects')
    end, { desc = 'Inner method / func def' })
    vim.keymap.set({ 'x', 'o' }, 'ac', function()
      ts_textobjects_select.select_textobject('@class.outer', 'textobjects')
    end, { desc = 'Outer class definition' })
    vim.keymap.set({ 'x', 'o' }, 'ic', function()
      ts_textobjects_select.select_textobject('@class.inner', 'textobjects')
    end, { desc = 'Inner class definition' })

    -- move keymaps
    local ts_textobjects_move = require 'nvim-treesitter-textobjects.move'

    vim.keymap.set({ 'n', 'x', 'o' }, ']m', function()
      ts_textobjects_move.goto_next_start('@function.outer', 'textobjects')
    end, { desc = 'Next method / function start' })
    vim.keymap.set({ 'n', 'x', 'o' }, ']]', function()
      ts_textobjects_move.goto_next_start('@class.outer', 'textobjects')
    end, { desc = 'Next class start' })
    -- You can also pass a list to group multiple queries.
    vim.keymap.set({ 'n', 'x', 'o' }, ']o', function()
      ts_textobjects_move.goto_next_start({ '@loop.inner', '@loop.outer' }, 'textobjects')
    end, { desc = 'Next loop start' })
    vim.keymap.set({ 'n', 'x', 'o' }, ']z', function()
      ts_textobjects_move.goto_next_start('@fold', 'folds')
    end, { desc = 'Next fold start' })
    vim.keymap.set({ 'n', 'x', 'o' }, ']M', function()
      ts_textobjects_move.goto_next_end('@function.outer', 'textobjects')
    end, { desc = 'Next method / function end' })
    vim.keymap.set({ 'n', 'x', 'o' }, '][', function()
      ts_textobjects_move.goto_next_end('@class.outer', 'textobjects')
    end, { desc = 'Next class end' })
    vim.keymap.set({ 'n', 'x', 'o' }, '[m', function()
      ts_textobjects_move.goto_previous_start('@function.outer', 'textobjects')
    end, { desc = 'Prev method / function start' })
    vim.keymap.set({ 'n', 'x', 'o' }, '[[', function()
      ts_textobjects_move.goto_previous_start('@class.outer', 'textobjects')
    end, { desc = 'Prev class start' })
    vim.keymap.set({ 'n', 'x', 'o' }, '[M', function()
      ts_textobjects_move.goto_previous_end('@function.outer', 'textobjects')
    end, { desc = 'Prev method / function end' })
    vim.keymap.set({ 'n', 'x', 'o' }, '[]', function()
      ts_textobjects_move.goto_previous_end('@class.outer', 'textobjects')
    end, { desc = 'Prev class end' })

    -- repeatable move keymaps
    local ts_repeat_move = require 'nvim-treesitter-textobjects.repeatable_move'

    -- Repeat movement with ; and ,
    -- ensure ; goes forward and , goes backward regardless of the last direction
    vim.keymap.set({ 'n', 'x', 'o' }, ';', ts_repeat_move.repeat_last_move_next)
    vim.keymap.set({ 'n', 'x', 'o' }, ',', ts_repeat_move.repeat_last_move_previous)

    -- Optionally, make builtin f, F, t, T also repeatable with ; and ,
    vim.keymap.set({ 'n', 'x', 'o' }, 'f', ts_repeat_move.builtin_f_expr, { expr = true })
    vim.keymap.set({ 'n', 'x', 'o' }, 'F', ts_repeat_move.builtin_F_expr, { expr = true })
    vim.keymap.set({ 'n', 'x', 'o' }, 't', ts_repeat_move.builtin_t_expr, { expr = true })
    vim.keymap.set({ 'n', 'x', 'o' }, 'T', ts_repeat_move.builtin_T_expr, { expr = true })
  end,
}
