return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    priority = 500,
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {
                "c", "lua", "vim", "vimdoc",
                "query", "elixir", "javascript",
                "html", "rust", "cpp", "python"
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
