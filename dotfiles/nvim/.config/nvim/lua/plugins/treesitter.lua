return {
    "nvim-treesitter/nvim-treesitter",
    lazy = "false",
    branch = "main",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc",
                                 "markdown", "typst", "css",
                                 "rust", "lua" },
            ensure_installed = {
                "c", "cpp", "lua", "vim",
                "vimdoc", "markdown", "regex"
            },
            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
