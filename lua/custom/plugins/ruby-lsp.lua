return {
  'neovim/nvim-lspconfig',
  opts = {
    servers = {
      ruby_ls = {
        -- if using `bundle add ruby-lsp`
        cmd = { 'bundle', 'exec', 'ruby-lsp' },

        -- or if installed globally via `gem install ruby-lsp`, use:
        -- cmd = { "ruby-lsp" },

        filetypes = { 'ruby' },
        root_dir = require('lspconfig.util').root_pattern('Gemfile', '.git'),
      },
    },
  },
}
