local lsp = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lsp.clangd.setup({
    capabilities = capabilities,
})

local lsp_flags = {
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
    settings = {
        ["rust-analyzer"] = {}
    }
}
