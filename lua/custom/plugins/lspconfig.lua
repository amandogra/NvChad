-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local present, lspconfig = pcall(require, "lspconfig")

if not present then
  return
end
-- local lspconfig = require "lspconfig"
-- From https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local servers = { "html", "cssls", "clangd", "eslint", "tsserver", "jsonls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
