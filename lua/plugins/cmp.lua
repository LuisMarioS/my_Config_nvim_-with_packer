local cmp = require('cmp')
local lsp = require('lspconfig')
require'luasnip'.filetype_extend("ruby", {"rails"})

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
       --[[  ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif require("luasnip").expand_or_jumpable() then
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
            else
                fallback()
            end
        end, {
            "i",
            "s",
        }) ]]
    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'lausnip' },
        { name = 'path' },
        { name = "buffer" },
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' }
    },
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lsp.clangd.setup({
    capabilities = capabilities,
})

local lsp_flags = {
    -- This is the default in Nvim 0.7+
    debounce_text_changes = 150,
}
lsp['pyright'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
lsp['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
lsp['rust_analyzer'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    -- Server-specific settings...
    settings = {
      ["rust-analyzer"] = {}
    }
}
