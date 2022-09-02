-- To be placed in /lua/custom/

local M = {}
-- local pluginConfs = require "custom.plugins.configs"
-- make sure you maintain the structure of `core/default_config.lua` here,

-- M.ui = { theme = "gruvchad", }

-- custom plugins and configs related to plugin
M.plugins = {
  user = {
    -- To setup the LSP servers
    ["neovim/nvim-lspconfig"] = {
      config = function()
        require "plugins.configs.lspconfig" -- already there
        require "custom.plugins.lspconfig" -- I added this in custom/plugins/lspconfig.lua file
      end,
    },
    ["nvim-treesitter/nvim-treesitter"] = {
      ensure_installed = {
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "json",
        "markdown"
      }
    },
    -- we are just modifying lspconfig's packer definition table
    -- adding the list of the servers to be installed by Mason
    ["williamboman/mason.nvim"] = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "vscode-langservers-extracted",
        "deno",
        "emmet-ls",
        "json-lsp",

        -- shell
        "shfmt",
        "shellcheck",
      }
    },
    -- File explorer related settings
    ["kyazdani42/nvim-tree.lua"] = {
      git = {
        enable = true, -- enable git-signs
        ignore = false -- node_modules and all the files mentioned in .gitignore should be displayed
      },
      view = {
        width = 20,
      },
    },
    --enable dashboard
    ["goolord/alpha-nvim"] = {
      disable = false
    },
    --enable whichkey
    ["folke/which-key.nvim"] = {
      disable = false
    },
  }
}

-- Personal key mappings in file ../custom/mappings.lua
M.mappings = require ("custom.mappings")

return M
-- for formatting and linting
-- ["jose-elias-alvarez/null-ls.nvim"] = {
  --   requires = { "nvim-lua/plenary.nvim" },
  --   after = "nvim-lspconfig",
  --   config = function()
    --     require "custom.plugins.null-ls"
    --   end,
    -- },
    -- ["MunifTanjim/prettier.nvim"] = {
      --   config = function()
        --     require "custom.plugins.prettier"
        --   end
        -- }
        -- override = {
          --   ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
          --   ["kyazdani42/nvim-tree.lua"] = pluginConfs.nvimtree,
          -- },
          -- adding the key mappings here
          -- M.mappings = require ("custom.mappings")
