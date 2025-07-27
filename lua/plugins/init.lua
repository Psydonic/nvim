return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require ("copilot").setup({
        suggestion = {
          auto_trigger = true,
        },
        filetypes = {
          markdown = true
        }
      })
    end,
  },

  {
  "nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "javascript", "typescript"
  		},
      highlight = {
        enable = true
      },
      ident = {
        enable = true,
      },
  	},
  },

  {
  "olimorris/codecompanion.nvim",
  opts = {},
  lazy = false, -- Ensures plugin loads automatically
  config = function()
    require("codecompanion").setup()
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },

  },

  {
  "MeanderingProgrammer/render-markdown.nvim",
  ft = { "markdown", "codecompanion" }
},
}
