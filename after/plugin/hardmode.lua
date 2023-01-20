function Dohardmode()
     vim.api.nvim_command("let g:HardMode_level = 'wannabe'");
     vim.api.nvim_command("autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()")
end

Dohardmode()
