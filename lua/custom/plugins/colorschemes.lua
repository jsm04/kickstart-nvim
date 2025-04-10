return {
  {
    'Mofiqul/vscode.nvim',
    lazy = true,
    opts = {
      transparent = true,
      italic_comments = true,
      underline_links = true,
      terminal_colors = true,
    },
  },

  {
    'kjssad/quantum.vim',
    lazy = false,
    priority = 500,
    opts = {
      style = {
        italics = {
          comments = true,
          variables = false,
          functions = false,
          keywords = true,
        },
      },

      colors = {
        Normal = { bg = 'NONE' },
        NormalFloat = { bg = 'NONE' },
        FloatBorder = { bg = 'NONE' },
        VertSplit = { bg = 'NONE' },
        SignColumn = { bg = 'NONE' },
        Pmenu = { bg = 'NONE' },
      },

      variant = 'dark',
    },
  },

  {
    'craftzdog/solarized-osaka.nvim',
    lazy = true,
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
    '2nthony/vitesse.nvim',
    lazy = true,
    dependencies = {
      'tjdevries/colorbuddy.nvim',
    },
    opts = {
      comment_italics = true,
      transparent_background = true,
      transparent_float_background = true, -- aka pum(popup menu) background
      reverse_visual = false,
      dim_nc = false,
      cmp_cmdline_disable_search_highlight_group = false, -- disable search highlight group for cmp item
      telescope_border_follow_float_background = false,
      lspsaga_border_follow_float_background = false,
      diagnostic_virtual_text_background = false,

      colors = {
        background = '#101010',
        activeBackground = '#101010',

        lowBackground = '#101010',
        lowActiveBackground = '#101010',
      },

      themes = {},
    },
  },
}
