-- the diagnostic messages/errors were cutting off. with the following change, diagnotics appear in a floating window when `[d` or `]d` are pressed
vim.diagnostic.config({
  float = {
    source = 'always',
    border = 'rounded'
  },
})
