vim.pack.add {
  { src = 'https://github.com/akinsho/bufferline.nvim', version = vim.version.range '*' },
}

-- vim.keymap.set('n', '\\', '<Cmd>Neotree reveal<CR>', { desc = 'NeoTree reveal', silent = true })

require('bufferline').setup {
  options = {
    always_show_bufferline = false,
    auto_toggle_bufferline = true,
    offsets = {
      {
        filetype = 'neo-tree',
        text = 'File Explorer',
        highlight = 'Directory',
        separator = true, -- use a "true" to enable the default, or set your own character
      },
    },
  },
}
