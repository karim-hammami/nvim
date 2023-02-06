-- update packer
vim.keymap.set("n", "<leader>su", vim.cmd.PackerSync)
-- vertical split
vim.keymap.set("n", "<C-a>", vim.cmd.vsplit)
-- horizontal split
vim.keymap.set("n", "<C-y>", vim.cmd.split)
-- run mason lsp

vim.cmd("nmap <C-i> mzgg=G`z")

vim.cmd("highlight Normal ctermbg=Black")
vim.cmd("highlight NonText ctermbg=Black")
