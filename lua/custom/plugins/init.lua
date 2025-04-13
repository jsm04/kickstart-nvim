-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  {
    'craftzdog/solarized-osaka.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
      terminal_colors = false,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = 'dark',
        floats = 'dark',
      },
      sidebars = { 'qf', 'help' },
      day_brightness = 0,
      hide_inactive_statusline = false,
      dim_inactive = false,
      lualine_bold = true,
    },
  },

  {
    'zenbones-theme/zenbones.nvim',
    dependencies = 'rktjmp/lush.nvim',
    lazy = true,
    event = 'VeryLazy',
    config = function()
      vim.g.zenbones_darken_comments = 45
    end,
  },

  {
    'Mofiqul/vscode.nvim',
    lazy = true,
    event = 'VeryLazy',
    opts = {
      transparent = true,
      style = 'dark',
      group_overrides = {
        -- Variables
        ['@variable'] = { fg = '#bdbdbd' },
        ['@variable.c_sharp'] = { link = '@variable' },
        ['@variable.member.c_sharp'] = { fg = '#65c3cc' },
        ['@variable.parameter'] = { fg = '#ed8796' },
        ['@variable.parameter.c_sharp'] = { link = '@variable.parameter' },

        ['@keyword.repeat'] = { fg = '#6c95eb', bold = true },
        ['@keyword.repeat.c_sharp'] = { link = '@keyword.repeat' },

        -- Boolean
        ['@boolean'] = { fg = '#6c95eb', italic = true },
        ['@boolean.c_sharp'] = { link = '@boolean' },

        -- Return
        ['@keyword.return'] = { fg = '#6c95eb' },
        ['@keyword.return.c_sharp'] = { link = '@keyword.return', bold = true },

        -- Method
        ['@function.method'] = { fg = '#38c596', bold = false },
        ['@function.method.call'] = { link = '@function.method' },
        ['@function.method.call.c_sharp'] = { link = '@function.method' },

        -- Types (mots clés)
        ['@keyword'] = { fg = '#6c95eb', italic = false },
        ['@keyword.conditional'] = { fg = '#6c95eb', italic = false },
        ['@keyword.conditional.c_sharp'] = { link = '@keyword.conditional' },

        -- Classes
        ['@lsp.type.class.cs'] = { fg = '#c191ff', bold = true },

        -- Number
        ['@number'] = { fg = '#e791bc', bold = true },
        ['@number.c_sharp'] = { link = '@number' },

        -- Comment
        ['Comment'] = { fg = '#84c26b', italic = true },
      },
    },
  },

  {
    'voldikss/vim-floaterm',
    config = function()
      vim.g.floaterm_height = 0.95
      vim.g.floaterm_width = 0.8
      -- Term toggle
      vim.keymap.set('n', '<Leader>\\', ':FloatermToggle<CR>', { noremap = true, silent = true })
    end,
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        globalstatus = false,
      },

      sections = {
        lualine_a = {
          'mode',
        },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = {
          {
            'filename',
            path = 1,
          },
        },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
    },
  },
}
