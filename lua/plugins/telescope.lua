ok, mod = pcall(require, "telescope.builtin")
if not ok then
    return
end

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>sg', builtin.git_files, { desc = 'Telescope find git files' })
vim.keymap.set('n', '<leader>sG', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = 'Telescope find files' })
