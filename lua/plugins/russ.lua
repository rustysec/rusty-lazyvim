return {
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            { "<leader><leader>", false },
        },
    },
    {
        "nvim-focus/focus.nvim",
        version = "*",
        config = function()
            require("focus").setup()
        end,
    },
    {
        "rcarriga/nvim-notify",
        config = function()
            require("notify").setup({
                background_colour = "#000000",
            })
        end,
    },
    {
        "lvimuser/lsp-inlayhints.nvim",
        config = function()
            require("lsp-inlayhints").setup()
        end,
    },
    {
        "williamboman/mason.nvim",
        opts = {
            PATH = "append",
        },
    },
    {
        "folke/tokyonight.nvim",
        opts = {
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
            on_colors = function(colors)
                colors.border = colors.purple
            end,
        },
    },
    {
        "stevearc/oil.nvim",
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    {
        "tpope/vim-fugitive",
    },
    {
        "kylechui/nvim-surround",
        config = function(_, opts)
            require("nvim-surround").setup({})
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        opts = function(_, opts)
            opts.winbar = {
                lualine_c = { { "filename", path = 1 }, "diagnostics" },
            }
            opts.inactive_winbar = {
                lualine_c = { { "filename", path = 1 }, "diagnostics" },
            }
            table.insert(opts.sections.lualine_b, "fileformat")
        end,
    },
    {
        "neovim/nvim-lspconfig",
        ---@class PluginLspOpts
        opts = {
            inlay_hints = { enabled = true },
            ---@type lspconfig.options
            servers = {
                rust_analyzer = {
                    settings = {
                        ["rust-analyzer"] = {
                            cargo = {
                                target = os.getenv("LSP_CARGO_TARGET") or nil,
                            },
                        },
                        diagnostics = {
                            disabled = {
                                "inactive-code",
                                "unlinked-file",
                            },
                        },
                    },
                },
            },
        },
    },
}
