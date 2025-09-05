return {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim",
        -- Floating and Animated Notifications
        "rcarriga/nvim-notify",
    },
    config = function()
        require("noice").setup({
            cmdline = {
                -- Use a popup for the cmdline
                view = "cmdline_popup",
                enabled = true,
                -- Options for the cmdline popup
                opts = {
                    position = { row = "65%", col = "50%",
                    },
                    size = { width = "40%", height = "auto",
                    },
                    border = { style = "rounded", },
                },
            },

            lsp = {
                -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                    -- requires hrsh7th/nvim-cmp
                    ["cmp.entry.get_documentation"] = true,
                },
            },
            presets = {
                bottom_search = true,           -- use a classic bottom cmdline for search
                command_palette = true,         -- position the cmdline and popupmenu together
                long_message_to_split = true,   -- long messages will be sent to a split
                inc_rename = false,             -- enables an input dialog for inc-rename.nvim
                lsp_doc_border = false,         -- add a border to hover docs and signature help
            },
        })
    end,
}
