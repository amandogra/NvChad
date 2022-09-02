-- https://github.com/MunifTanjim/prettier.nvim
local present, prettier = pcall(require, "prettier")

if not present then
  return
end

prettier.setup ({
  bin = 'prettier', -- or `prettierd`
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
})
