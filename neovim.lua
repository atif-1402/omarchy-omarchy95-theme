return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                bg = "#C0C0C0",
                bg_dark = "#C0C0C0",
                bg_highlight = "#808080",

                fg = "#000000",
                fg_dark = "#404040",
                comment = "#808080",

                red = "#800000",
                orange = "#FF0000",
                yellow = "#808000",
                green = "#008000",
                cyan = "#008080",
                blue = "#000080",
                purple = "#800080",
                magenta = "#FF00FF",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}