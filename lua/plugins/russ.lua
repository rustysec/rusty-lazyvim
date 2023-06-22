return {
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },
  {
    "beauwilliams/focus.nvim",
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
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
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
    end,
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      inlay_hints = { enabled = true },
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              cargo = {
                target = "x86_64-pc-windows-gnu",
              },
            },
          },
        },
      },
    },
  },
}
