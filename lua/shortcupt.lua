local map = function(mode, key, result) 
    vim.api.nvim_set_keymap(mode, key, result, { noremap= true, silent = true })
end

map('n', '<C-L>', ':Telescope<CR>')
map('i', '<C-L>', '<ESC>:Telescope<CR>')
map('n', '<C-S>', ':write<CR>')
map('i', '<C-S>', '<ESC>:write<CR>a')
map('n', '<C-Q>', ':quit<CR>')
map('i', '<C-Q>', '<ESC>:quit<CR>') 
map('n', '<TAB>', ':BufferLineCycleNext<CR>')
map('n', 'lg', ':LazyGit<CR>')
map('n', 'term', ':split<CR>:term<CR>:resize 8<CR>:set nonumber<CR>')
map('n', 'nt', ':NeoTreeFocus<CR>')
