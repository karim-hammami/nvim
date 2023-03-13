require('legendary').setup({
    keymaps = {
        { '<leader>a',   ':vsplit',                               description = 'Split Verticaly' },
        { '<leader>vrn', ':lua vim.lsp.buf.rename()<CR>',         description = 'LSP rename' },
        { '<leader>vca', ':lua vim.lsp.buf.code_action()<CR>',    description = 'LSP code action' },
        { '<leader>vd',  ':lua vim.diagnostic.open_float()<CR>',  description = 'LSP open float' },
        { 'K',           ':lua vim.lsp.buf.hover()<CR>',          description = 'LSP hover' },
        { '<leader>vf',  ':lua vim.lsp.buf.implementation()<CR>', description = 'LSP goto implementation' },
        { 'gd',          ':lua vim.lsp.buf.definition()<CR>',     description = 'LSP goto definition' },
        { 'gA',          ':Telescope flutter commands<CR>',       description = 'Flutter Commands' }
    }
})

vim.keymap.set("n", "<A-j>", function() vim.cmd("Legendary") end)
