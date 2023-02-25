require('legendary').setup({
    keymaps = {
        { '<leader>a', ':vsplit', description = 'Split Verticaly' },
    }
})

vim.keymap.set("n", "<A-j>", function() vim.cmd("Legendary") end)
