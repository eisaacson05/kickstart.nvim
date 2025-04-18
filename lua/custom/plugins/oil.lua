return {
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional icons
    config = function()
      require('oil').setup {
        view_options = {
          show_hidden = true,
        },
      }
    end,
    keys = {
      { '-', '<CMD>Oil<CR>', desc = 'Open parent directory' },
    },
  },
}
