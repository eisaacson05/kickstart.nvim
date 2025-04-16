-- TELESCOPE

-- Find Files in Current Working Directory
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').find_files, { desc = 'Find Files' })

-- RETURN
return {}
