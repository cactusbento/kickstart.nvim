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
    'L3MON4D3/LuaSnip',
    keys = function()
      return {}
    end,
  },
  {
    'glepnir/template.nvim',
    cmd = { 'Template', 'TemProject' },
    config = function()
      require('template').setup {
        author = 'Timothy Lau',
        email = 'timothy.lau.5@us.af.mil',
      }
    end,
  },
}
