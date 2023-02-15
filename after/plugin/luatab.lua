require('luatab').setup{}

vim.keymap.set("n", "<A-tab>", vim.cmd.tabnext )
vim.keymap.set("n", "<leader>t", vim.cmd.tabnew )
vim.keymap.set("n", "<C-w>", vim.cmd.tabclose )

