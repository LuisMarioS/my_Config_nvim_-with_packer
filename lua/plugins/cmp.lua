local cmp = require('cmp')
require'luasnip'.filetype_extend("ruby", {"rails"})

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
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
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'lausnip' },
        { name = 'path' },
        { name = "buffer" },
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' }
    }),
})

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
    end,
})
