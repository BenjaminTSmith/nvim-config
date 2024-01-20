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
            require("mason-lspconfig").setup()
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("lspconfig").rust_analyzer.setup{}
            require("lspconfig").lua_ls.setup{}
            require("lspconfig").pyright.setup{}
            require("lspconfig").clangd.setup{}
        end
    },
}
