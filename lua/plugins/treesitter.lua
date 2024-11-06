return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    priority = 500,
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {
                "c", "lua", "vim",
                "html", "rust", "cpp", "python",
                "glsl", "zig"
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
        vim.filetype.add({
            extension = {
                vert = "glsl",
                frag = "glsl",
            }
        })
    end
}
