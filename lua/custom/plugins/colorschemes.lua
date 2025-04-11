return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      style = 'night',
      light_style = 'day',
      transparent = true,
      terminal_colors = false,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = 'transparent',
        floats = 'transparent',
      },
      dim_inactive = false,
      lualine_bold = true,
    },
  },

  {
    'kjssad/quantum.vim',
    lazy = true,
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

      colors = {},

      themes = {},
    },
  },

  {
    'navarasu/onedark.nvim',
    lazy = true,
    opts = {
      style = 'dark', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
      transparent = true,
      term_colors = false,
      ending_tildes = false,
      cmp_itemkind_reverse = false,

      toggle_style_key = nil,
      toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- List of styles to toggle between

      code_style = {
        comments = 'italic',
        keywords = 'italic',
        functions = 'none',
        strings = 'none',
        variables = 'none',
      },

      lualine = {
        transparent = true,
      },

      colors = {},
      highlights = {},

      diagnostics = {
        darker = true,
        undercurl = true,
        background = false,
      },
    },
  },
}
