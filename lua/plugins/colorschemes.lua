return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                integrations = {
                    cmp = true,
                    treesitter = true,
                },
                styles = {
                    comments = {},
                    conditionals = {},
                },
                no_italic = true,
            })
            -- vim.cmd.colorscheme("catppuccin-mocha")
        end
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            require("tokyonight").setup({
                integrations = {
                    cmp = true,
                    treesitter = true,
                },
                styles = {
                    comments = {},
                    keywords = {},
                },
                -- vim.cmd.colorscheme("tokyonight-storm")
            })
        end
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            require("rose-pine").setup({
                integrations = {
                    cmp = true,
                    treesitter = true,
                },
                styles = {
                    comments = { italic = false },
                    keywords = { italic = false },
                },
                vim.cmd.colorscheme("rose-pine-moon")
            })
        end
    },

    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000 ,
        opts = {},
        config = function()
            -- Default options:
            require("gruvbox").setup({
                terminal_colors = true,
                undercurl = true,
                underline = true,
                bold = true,
                italic = {
                    strings = true,
                    emphasis = true,
                    comments = true,
                    operators = false,
                    folds = true,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true,
                contrast = "",
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = false,
            })
            -- vim.cmd.colorscheme("gruvbox")
        end
    }
}
