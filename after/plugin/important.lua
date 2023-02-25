-- update packer
vim.keymap.set("n", "<leader>su", vim.cmd.PackerSync)
-- vertical split
vim.keymap.set("n", "<leader>a", vim.cmd.vsplit)
-- horizontal split
vim.keymap.set("n", "<C-y>", vim.cmd.split)
-- better split navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
-- better split resize
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Left>", "vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")
-- select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")
-- sync yank behaviour to clipboard (require xclip for x11)
vim.keymap.set("n", "y", '"+y')
vim.keymap.set("n", "yy", '"+yy')
vim.keymap.set("v", "y", '"+y')
-- selector keybinds
vim.keymap.set("n", "<A-e>", require "selector".select)
vim.keymap.set("n", "<A-p>", require "selector".selectCopy)
vim.keymap.set("n", "<A-n>", require "selector".float)
vim.keymap.set("n", "<A-m>", require "selector".split)
-- tab management
vim.keymap.set("n", "<A-tab>", vim.cmd.tabnext)
vim.keymap.set("n", "<leader>t", vim.cmd.tabnew)
-- trouble quickfix toggle keybind
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
    { silent = true, noremap = true }
)
-- code action UI
vim.g.code_action_menu_window_border = 'single'
vim.keymap.set("n", "<leader>ga", ":CodeActionMenu<CR>")
