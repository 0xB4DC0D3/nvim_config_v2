return {
  'nvimdev/lspsaga.nvim',
  config = function()
    require('lspsaga').setup({
      symbol_in_winbar = {
        enable = true
      },
      lightbulb = {
        enable = false
      }
    })
  end,
}
