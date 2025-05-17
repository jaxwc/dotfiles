return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            require("tokyonight").setup({
                style = "storm",          -- Sets the variant to 'storm'
                transparent = true,       -- Enables transparent background
                terminal_colors = true,   -- Use terminal colors
                styles = {
                    sidebars = "transparent",
                    floats = "transparent"
                }
            })
            vim.cmd.colorscheme("tokyonight-storm")
        end
    },
    {
        "catppuccin/nvim",
        lazy = true,
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                transparent_background = true,
            })
        end
    },
}
