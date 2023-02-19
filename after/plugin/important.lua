-- update packer
vim.keymap.set("n", "<leader>su", vim.cmd.PackerSync)
-- vertical split
vim.keymap.set("n", "<C-a>", vim.cmd.vsplit)
-- horizontal split
vim.keymap.set("n", "<C-y>", vim.cmd.split)
-- select all
vim.keymap.set("n", "<leader>a", "gg<S-v>G")
-- sync yank behaviour to clipboard (require xclip for x11)
vim.keymap.set("n", "y", '"+y')
vim.keymap.set("n", "yy", '"+yy')
vim.keymap.set("v", "y", '"+y')
vim.keymap.set("n", "<A-e>", require "selector".select)

vim.cmd("nmap <C-i> mzgg=G`z")
