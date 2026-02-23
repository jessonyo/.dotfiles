local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', function()
    builtin.find_files({ hidden = true, no_ignore = true })
end, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope git files search' })
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ 
        search = vim.fn.input("Grep > "),
        additional_args = { '--hidden', '--no-ignore' }
    });
end)
