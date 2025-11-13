return {
    {
        "bjarneo/aether.nvim",
        name = "beerGirl",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#0D0D10", -- Default background
                base01 = "#3e3e45", -- Lighter background (status bars)
                base02 = "#0D0D10", -- Selection background
                base03 = "#3e3e45", -- Comments, invisibles
                base04 = "#F3E1E3", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#F3E1E3", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#a78181", -- Variables, errors, red
                base09 = "#ceb6b6", -- Integers, constants, orange
                base0A = "#F3D59D", -- Classes, types, yellow
                base0B = "#F8CA6F", -- Strings, green
                base0C = "#b1b8c4", -- Support, regex, cyan
                base0D = "#9f96c0", -- Functions, keywords, blue
                base0E = "#c79ec5", -- Keywords, storage, magenta
                base0F = "#fef8ee", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
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
