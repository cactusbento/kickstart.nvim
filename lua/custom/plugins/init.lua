-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'numToStr/Comment.nvim',
    opts = function(_, opts)
      vim.keymap.set('n', '<leader>\\', function()
        require('Comment.api').toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)
      end, { desc = 'Toggle comment line' })

      vim.keymap.set(
        'v',
        '<leader>\\',
        "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
        { desc = 'Toggle comment for selection' }
      )
    end,
  },
  {
    'kylechui/nvim-surround',
    version = '*', -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require('nvim-surround').setup {
        -- Configuration here, or leave empty to use defaults
        keymaps = {
          insert = '<C-s>s',
          insert_line = false,
          normal = '<leader>Ss',
          normal_cur = '<leader>Sc',
          normal_line = '<leader>Sl',
          normal_cur_line = false,
          visual = '<leader>Ss',
          visual_line = '<leader>Sl',
          delete = '<leader>Sd',
          change = '<leader>Sc',
          change_line = false,
        },
      }
    end,
  },
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      auto_hide = 1,
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      insert_at_end = true,
      -- …etc.
      icons = {
        -- Configure the base icons on the bufferline.
        -- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
        buffer_index = false,
        buffer_number = false,
        button = '',
        -- Enables / disables diagnostic symbols
        diagnostics = {
          [vim.diagnostic.severity.ERROR] = { enabled = true, icon = 'ﬀ' },
          [vim.diagnostic.severity.WARN] = { enabled = false },
          [vim.diagnostic.severity.INFO] = { enabled = false },
          [vim.diagnostic.severity.HINT] = { enabled = true },
        },
        gitsigns = {
          added = { enabled = true, icon = '+' },
          changed = { enabled = true, icon = '~' },
          deleted = { enabled = true, icon = '-' },
        },
        filetype = {
          -- Sets the icon's highlight group.
          -- If false, will use nvim-web-devicons colors
          custom_colors = false,

          -- Requires `nvim-web-devicons` if `true`
          enabled = false,
        },
        separator = { left = '▎', right = '' },

        -- If true, add an additional separator at the end of the buffer list
        separator_at_end = true,

        -- Configure the icons on the bufferline when modified or pinned.
        -- Supports all the base icon options.
        modified = { button = '●' },
        pinned = { button = '<*>', filename = true },

        -- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
        preset = 'default',

        -- Configure the icons on the bufferline based on the visibility of a buffer.
        -- Supports all the base icon options, plus `modified` and `pinned`.
        alternate = { filetype = { enabled = false } },
        current = { buffer_index = true },
        inactive = { button = '×' },
        visible = { modified = { buffer_number = false } },
      },
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
  {
    'craftzdog/solarized-osaka.nvim',
    opts = {
      setup = {
        transparent = false,
        terminal_colors = true,
      },
    },
  },
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        zls = {
          mason = false,
        },
      },
    },
  },
  {
    'L3MON4D3/LuaSnip',
    keys = function()
      return {}
    end,
  },
}
