return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "rust_analyzer", "clangd", }
            })
        end
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig");
            lspconfig.rust_analyzer.setup{
                capabilities = capabilities
            }
            lspconfig.lua_ls.setup{
                capabilities = capabilities
            }
            lspconfig.pyright.setup{
                capabilities = capabilities
            }
            lspconfig.clangd.setup{
                capabilities = capabilities
            }
            lspconfig.eslint.setup{
                capabilities = capabilities
            }
            lspconfig.bashls.setup{
                capabilities = capabilities
            }
            lspconfig.pylyzer.setup{
                capabilities = capabilities
            }
            lspconfig.cssls.setup{
                capabilities = capabilities
            }
            lspconfig.html.setup{
                capabilities = capabilities
            }

            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
            vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)

        end
    },
}
