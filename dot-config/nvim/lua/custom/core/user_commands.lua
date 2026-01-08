-- Search for pattern with ripgrep and return first match per file in quickfix list
vim.api.nvim_create_user_command('RgFiles', function(opts)
  local pat = opts.fargs[1]
  local dir = opts.fargs[2] or '.'

  -- rg output: file:line:col:text   (with --vimgrep)
  local lines = vim.fn.systemlist { 'rg', '--vimgrep', '--smart-case', '--no-heading', pat, dir }

  local seen = {}
  local items = {}

  for _, line in ipairs(lines) do
    -- Parse: filename:lnum:col:text
    local f, lnum, col, text = line:match '^(.-):(%d+):(%d+):(.*)$'
    if f and not seen[f] then
      seen[f] = true
      table.insert(items, {
        filename = f,
        lnum = tonumber(lnum),
        col = tonumber(col),
        text = text,
      })
    end
  end

  vim.fn.setqflist({}, ' ', {
    title = ('rg first: %s (%s)'):format(pat, dir),
    items = items,
  })

  -- Open quickfix if we have results; otherwise just message
  if #items > 0 then
    vim.cmd 'copen'
  else
    vim.notify('No matches for: ' .. pat, vim.log.levels.INFO)
  end
end, { nargs = '+', complete = 'file' })
