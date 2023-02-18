require('nvim-autopairs').setup()
require('lualine').setup {
    sections = {
        lualine_x = { 'filetype' }
    }
}
require('gitsigns').setup()
require('Comment').setup()
require('mason').setup()
--require('lazygit').setup()
require("luasnip.loaders.from_vscode").lazy_load()
require('bufferline').setup()
require('nvim-ts-autotag').setup()
