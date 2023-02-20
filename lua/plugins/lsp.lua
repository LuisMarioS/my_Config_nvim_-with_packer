local lsp = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').default_capabilities()

--[[ No sé si es que sera nesecario, pero solo por que creo que me mendria
bie intentar cosas nuevas, o eso creo. ]]

lsp.clangd.setup({
    capabilities = capabilities,
})

local lsp_flags = {
    debounce_text_changes = 150,
}

lsp.pyright.setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

lsp.tsserver.setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

lsp.rust_analyzer.setup{
    on_attach = on_attach,
    flags = lsp_flags,
    settings = {
        ["rust-analyzer"] = {}
    }
} 
lsp.cssmodules_ls.setup {}
lsp.html.setup {}
lsp.java_language_server.setup {}
lsp.jdtls.setup {}
lsp.pylsp.setup {}
