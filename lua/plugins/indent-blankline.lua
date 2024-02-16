return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  lazy = false,
  config = function()
    require("ibl").setup({
      indent = {
        char = '▏',
        highlight = "WinSeparator",
      },
      scope = {
        enabled = true,
        show_start = false,
        show_end = false,
        highlight = "NonText",
      }
    })
    
    --#6e7681
  end
}
