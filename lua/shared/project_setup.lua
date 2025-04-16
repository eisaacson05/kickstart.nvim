local M = {}

M.setup = function()
  vim.cmd 'enew'
  vim.cmd 'split'
  vim.cmd 'resize 15'
  vim.cmd 'wincmd j'

  vim.cmd 'vsplit'
  vim.cmd 'wincmd l'
  vim.cmd 'vsplit'

  vim.cmd 'wincmd h'
  vim.cmd 'terminal'
  vim.fn.chansend(vim.b.terminal_job_id, './restart_tail | grep fwoo\n')

  vim.cmd 'wincmd l'
  vim.cmd 'terminal'
  vim.fn.chansend(vim.b.terminal_job_id, './restart_tail\n')

  vim.cmd 'wincmd l'
  vim.cmd 'terminal'

  vim.cmd 'wincmd k'

  vim.cmd 'tabnew ~/.config/nvim/nvim-notes.txt'
  vim.cmd 'tabnext 1'
end

return M
