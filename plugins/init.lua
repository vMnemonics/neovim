return {
  ["ggandor/leap.nvim"] = {
    config = function()
      require("leap").add_default_mappings()
    end,
  },
  ["folke/trouble.nvim"] = {
    config = function()
      require("trouble").setup {}
    end,
  },
  ["xiyaowong/nvim-transparent"] = {
    config = function()
      require("transparent").setup {
        enable = true,
      }
    end,
  },
  ["nvim-telescope/telescope-file-browser.nvim"] = {
    after = "telescope.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          file_browser = {},
        },
      }
      require("telescope").load_extension "file_browser"
    end,
  },
  ["ellisonleao/glow.nvim"] = {
    config = function()
      require("glow").setup()
    end,
  },
  ["kdheepak/lazygit.nvim"] = {
    after = "telescope.nvim",
    setup = function()
      require("core.lazy_load").on_file_open "lazygit.nvim"
    end,
    config = function()
      require "custom.plugins.lazygit"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
    lock = true,
  },
  ["neovim/nvim-lspconfig"] = {
    setup = function()
      require("core.lazy_load").on_file_open "nvim-lspconfig"
    end,
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["hrsh7th/nvim-cmp"] = {
    after = "friendly-snippets",
    config = function()
      require "custom.plugins.cmp"
    end,
  },
  ["rodjek/vim-puppet"] = {
    opt = true,
    ft = "puppet",
  },
  ["goolord/alpha-nvim"] = {
    disable = false,
    command = "Alpha",
  },
  ["folke/which-key.nvim"] = {
    disable = false,
  },
  ["nvim-neorg/neorg"] = {
    after = "nvim-treesitter",
    setup = function()
      require("core.lazy_load").on_file_open "neorg"
      require("core.lazy_load").on_file_open "plenary.nvim"
      require("core.lazy_load").on_file_open "TrueZen.nvim"
      require("core.lazy_load").on_file_open "nvim-treesitter"
    end,
    config = function()
      require "custom.plugins.neorgconfig"
    end,
    cmd = "Neorg",
    requires = {
      "nvim-lua/plenary.nvim",
      {
        "Pocco81/TrueZen.nvim",
        config = function()
          require("true-zen").setup {}
        end,
      },
    },
  },
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup {
        mapping = { "jk", "jj", "JJ", "JK" },
        timeout = 1000,
        clear_empty_lines = true,
        keys = "<Esc>",
      }
    end,
  },
}