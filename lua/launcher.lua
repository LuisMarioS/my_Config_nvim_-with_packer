require('lualine').setup {
    sections = {
        lualine_x = { 'filetype' }
    }
}
require('gitsigns').setup()
require('Comment').setup()
require('mason').setup()
require("luasnip.loaders.from_vscode").lazy_load()
require('nvim-ts-autotag').setup()
require('mason-lspconfig').setup()
