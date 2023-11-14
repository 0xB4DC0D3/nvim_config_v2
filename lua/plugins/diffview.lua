return {
  "sindrets/diffview.nvim",
  config = function()
    vim.api.nvim_set_hl(0, "DiffDelete", { fg = "#505050", bg = "#361c28" })
  end
}
