return {
  "romgrk/barbar.nvim",
  init = function() vim.g.barbar_auto_setup = false end,
  config = function()
    require("barbar").setup({
      sidebar_filetypes = {
        ["neo-tree"] = { text = nil, event = "BufWipeout" }
      }
    })
  end
}
