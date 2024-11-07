local builtin = require('telescope.builtin')

vim.g.mapleader = " "


vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set({ 'n', 'i', 'v', 'x', 's', 'o', 't', 'c' }, '<C-n>', '<ESC>' )

vim.keymap.set('n', '<leader>e', function()
	vim.cmd(':Ex')
end)

vim.keymap.set('n', '<leader>q',':bd<CR>')

-- Open/close terminal with <C-`> (Ctrl + backtick)
vim.keymap.set('n', '<C-t>', ':ToggleTerm<CR>', { noremap = true, silent = true })

-- Toggle terminal from Terminal mode with <Esc> (escape back to Normal)
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })

-- Close terminal directly with <C-w> while inside Terminal mode
vim.keymap.set('t', '<C-t>', [[<C-\><C-n>:q<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical<CR>', { noremap = true, silent = true })

-- Auto-save whenever leaving Insert mode or switching buffers
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = "*",  -- Applies to all file types
  command = "silent! write",  -- Save the file silently
})

vim.keymap.set('n','<leader>gs',':Neogit<CR>')
vim.keymap.set('n','<leader>gc',':Neogit commit<CR>')
vim.keymap.set('n','<leader>gpl',':Neogit pull<CR>')
vim.keymap.set('n','<leader>gpu',':Neogit push<CR>')
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = bufnr })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = bufnr })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { noremap = true, silent = true })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
