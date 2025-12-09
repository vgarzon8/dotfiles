return {
  settings = {
    pyright = {
      -- using Ruff's import organizer
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        -- ignore all files for analysis to exclusively use Ruff for linting
        ignore = { '*' },
      },
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
