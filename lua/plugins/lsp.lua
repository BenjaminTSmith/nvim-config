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
        init_options = {
            userLanguages = {
                eelixir = "html-eex",
                eruby = "erb",
                rust = "html",
            },
        },
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig");
            lspconfig.rust_analyzer.setup {
                capabilities = capabilities
            } lspconfig.lua_ls.setup {
                settings = {
                    capabilities = capabilities,
                    Lua = {
                        diagnostics = {
                            globals = { "vim", },
                        }
                    }
                }
            } lspconfig.pyright.setup {
                capabilities = capabilities
            } lspconfig.clangd.setup {
                capabilities = capabilities
            } lspconfig.bashls.setup {
                capabilities = capabilities
            } lspconfig.cssls.setup {
                capabilities = capabilities
            } lspconfig.html.setup {
                capabilities = capabilities
            } lspconfig.cmake.setup {
                capabilities = capabilities
            } lspconfig.ocamllsp.setup {
                capabilities = capabilities
            } lspconfig.asm_lsp.setup {
                capabilities = capabilities
            } lspconfig.zls.setup {
                capabilities = capabilities
            }

            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition'})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover)
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename' })
            vim.keymap.set('n', '<leader>ls', ':LspStart<CR>', { desc = 'Start LSP client' })
            vim.keymap.set('n', '<leader>le', ':LspStop<CR>', { desc = 'End LSP client' })

        end
    },
}
