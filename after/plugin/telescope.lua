local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-e>', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

