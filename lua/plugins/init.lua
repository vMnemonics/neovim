-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  -- change trouble config
  -- override nvim-cmp and add cmp-emoji
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = { "hrsh7th/cmp-emoji" },
  --   ---@param opts cmp.ConfigSchema
  --   opts = function(_, opts)
  --     table.insert(opts.sources, { name = "emoji" })
  --   end,
  -- },
  --
  -- -- change some telescope options and a keymap to browse plugin files
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   keys = {
  --     -- add a keymap to browse plugin files
  --     -- stylua: ignore
  --     {
  --       "<leader>fp",
  --       function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
  --       desc = "Find Plugin File",
  --     },
  --   },
  --   -- change some options
  --   opts = {
  --     defaults = {
  --       layout_strategy = "horizontal",
  --       layout_config = { prompt_position = "top" },
  --       sorting_strategy = "ascending",
  --       winblend = 0,
  --     },
  --   },
  -- },

  -- add pyright to lspconfig

  -- add tsserver and setup with typescript.nvim instead of lspconfig
  -- {
  --   "neovim/nvim-lspconfig",
  --   dependencies = {
  --     "jose-elias-alvarez/typescript.nvim",
  --     init = function()
  --       require("lazyvim.util").lsp.on_attach(function(_, buffer)
  --         -- stylua: ignore
  --         vim.keymap.set( "n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
  --         vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
  --       end)
  --     end,
  --   },
  --   ---@class PluginLspOpts
  --   opts = {
  --     ---@type lspconfig.options
  --     servers = {
  --       -- tsserver will be automatically installed with mason and loaded with lspconfig
  --       tsserver = {},
  --     },
  --     -- you can do any additional lsp server setup here
  --     -- return true if you don't want this server to be setup with lspconfig
  --     ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
  --     setup = {
  --       -- example to setup with typescript.nvim
  --       tsserver = function(_, opts)
  --         require("typescript").setup({ server = opts })
  --         return true
  --       end,
  --       -- Specify * to use this function as a fallback for any server
  --       -- ["*"] = function(server, opts) end,
  --     },
  --   },
  -- },

  -- for typescript, LazyVim also includes extra specs to properly setup lspconfig,
  -- treesitter, mason and typescript.nvim. So instead of the above, you can use:


  -- add more treesitter parsers


  -- or you can return new options to override all the defaults



  -- add any tools you want to have installed below


  -- Use <tab> for completion and snippets (supertab)
  -- first: disable default <tab> and <s-tab> behavior in LuaSnip

}
