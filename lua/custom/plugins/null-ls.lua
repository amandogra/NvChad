-- Got the idea form: https://nvchad.github.io/config/Format%20&%20lint
local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- check more at: https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
  -- webdev stuff
  b.diagnostics.eslint_d,
  -- b.formatting.deno_fmt,
  -- b.formatting.prettier,
  b.formatting.eslint_d,
  b.code_actions.eslint_d,
  -- For Git actions
  b.code_actions.gitsigns,
  -- JavaScript/TypeScript linter (ESLint wrapper) with great defaults
  -- b.code_actions.xo,
  -- A pure JavaScript version of the service provided at jsonlint.com.
  -- b.diagnostics.jsonlint,
  -- Markdown style and syntax checker.
  -- b.diagnostics.markdownlint,
  -- A mighty, modern linter that helps you avoid errors and enforce conventions in your style files (css, scss, less and sass)
  -- b.diagnostics.stylelint,

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = function(client)
    if client.server_capabilities.documentFormattingProvider then
      vim.cmd("nnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.formatting()<CR>")
      -- format on save
      -- vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()")
    end
    if client.server_capabilities.documentRangeFormattingProvider then
      vim.cmd("xnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.range_formatting({})<CR>")
    end
  end,
}
