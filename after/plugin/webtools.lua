require'web-tools'.setup({
    keymaps = {
        rename = nil,  -- by default use same setup of lspconfig
        repeat_rename = '.', -- . to repeat
    },
})

vim.keymap.set("n", "<leader>g" , vim.cmd.BrowserOpen);
