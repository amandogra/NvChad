-- custom/mappings
-- n, v, i, t = mode names
local M = {}
-- local gs = package.loaded.gitsigns

-- add this table only when you want to disable default keys
M.disabled = {
  n = {
      ["<leader>cm"] = "",
      ["<leader>gt"] = ""
  }
}

-- overwriting keys related to Telescope/Git
M.telescope = {
  n = {
    ["<leader>fgc"] = { "<cmd> Telescope git_commits <CR>", " git commits" },
    ["<leader>gst"] = { "<cmd> Telescope git_status <CR>", " git status" },
  }
}

M.gitsigns = {
  n = {
    ["]c"] = { "<cmd>Gitsigns next_hunk<CR>", " Go to next hunk" },
    ["[c"] = { "<cmd>Gitsigns prev_hunk<CR>", " Go to prev hunk" },
    ["<leader>ghs"] = { ":Gitsigns stage_hunk<CR>", " Stage hunk" },
    ["<leader>ghr"] = { ":Gitsigns reset_hunk<CR>", " Reset hunk" },
    ["<leader>ghp"] = { ":Gitsigns preview_hunk<CR>", " Preview hunk" },
    ["<leader>gbs"] = { ":Gitsigns stage_buffer<CR>", " Stage buffer" },
    ["<leader>gbr"] = { ":Gitsigns reset_buffer<CR>", " Reset buffer" },
    ["<leader>gd"] = { ":Gitsigns diffthis<CR>", " Diff buffer" },
    -- ["<leader>gD"] = { function() gs.diffthis('~') end, " Diff this ~" },
    ["<leader>ggb"] = { ":Gitsigns toggle_current_line_blame<CR>", " Toggle blame" },
  },
  v = {
    ["<leader>ghs"] = { ":Gitsigns stage_hunk<CR>", " Stage hunk" },
    ["<leader>ghr"] = { ":Gitsigns reset_hunk<CR>", " Reset hunk" },
  },
}

return M
