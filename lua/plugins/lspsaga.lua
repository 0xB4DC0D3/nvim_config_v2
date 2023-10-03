return {
  'nvimdev/lspsaga.nvim',
  config = function()
    require('lspsaga').setup({
      symbol_in_winbar = {
        enable = true,
        show_file = false
      },
      lightbulb = {
        enable = false
      }
    })
  end,
}
