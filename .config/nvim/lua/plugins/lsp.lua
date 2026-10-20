return {
    'neovim/nvim-lspconfig',
    dependencies = { 'saghen/blink.cmp' },
    opts = {
        servers = {
            lua_ls = {},
            rust_analyzer = {}
        }
    },
    config = function(_, opts)
        -- local lspconfig = require('lspconfig')
        vim.lsp.config('*', {
            capabilities = capabilities,
        })
        vim.lsp.enable({ 'lua_ls', 'rust_analyzer' })


        -- diagnostics
        vim.diagnostic.config(
            {
                underline = true,
                -- virtual_text = {
                --     spacing = 4,
                --     prefix = '●', -- Could also be '■', '✖', etc.
                -- },
                signs = true,
                update_in_insert = false,
                severity_sort = true,
            }
        )
    end

}
