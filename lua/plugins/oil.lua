return {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("oil").setup()
        vim.keymap.set("n", "<leader>ft", "<CMD>Oil<CR>", { desc = "Open file tree." })
    end
}

