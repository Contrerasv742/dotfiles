return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls", "rust_analyzer", "bashls", "clangd",
                    "html", "tailwindcss", "tinymist", "ts_ls", "harper_ls",
                },
                automatic_installation = true,
                handlers = {
                    -- Default handler - applies to all servers without custom config
                    function(server_name)
                        require("lspconfig")[server_name].setup({})
                    end,

                    -- Custom configurations
                    ["clangd"] = function()
                        require("lspconfig").clangd.setup({
                            cmd = {
                                "clangd", "--background-index", "--clang-tidy",
                                "--header-insertion=iwyu", "--completion-style=detailed",
                                "--fallback-style=llvm", "--all-scopes-completion",
                                "--enable-config", "--log=verbose",
                            },
                            init_options = {
                                clangdFileStatus = true,
                                usePlaceholders = true,
                                completeUnimported = true,
                            },
                        })
                    end,

                    ["tailwindcss"] = function()
                        require("lspconfig").tailwindcss.setup({
                            filetypes = { "html", "javascriptreact", "typescriptreact" },
                        })
                    end,

                    ["harper_ls"] = function()
                        require("lspconfig").harper_ls.setup({
                            filetypes = { "html", "markdown", "css", "typst", "text" },
                            settings = {
                                ["harper-ls"] = {
                                    userDictPath = "~/.config/harper-ls/dict.txt"
                                }
                            }
                        })
                    end,
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            -- Set up default capabilities for all LSP servers
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            require('lspconfig.util').default_config.capabilities = vim.tbl_deep_extend(
                'force',
                require('lspconfig.util').default_config.capabilities,
                capabilities
            )

            -- Global LSP keybindings
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition,
                { desc = "Definition" })
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references,
                { desc = "References" })
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action,
                { desc = "Code Actions" })
            vim.keymap.set("n", "<leader>do", vim.diagnostic.open_float,
                { desc = "Open floating diagnostic" })
            vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev,
                { desc = "Go to previous diagnostic" })
            vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next,
                { desc = "Go to next diagnostic" })
            vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist,
                { desc = "Add diagnostics to location list" })
        end,
    },
}
