return {
    -- Add Typst preview plugin
    {
        "chomosuke/typst-preview.nvim",
        -- Ensure dependencies are installed
        dependencies = {
            "neovim/nvim-lspconfig",
        },
        lazy = false,
        ft = "typst",
        config = function()
            require("typst-preview").setup({
                open_cmd = nil,
                debug = false,
                port = 0, -- Random port
            })
        end,
    },
    -- Add Typst syntax support
    {
        "kaarmu/typst.vim",
        ft = "typst",
        lazy = false,
    },
}
