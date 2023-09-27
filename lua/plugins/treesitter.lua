return {
	"nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true,
      highlight = {
        enable = true
      },
      autotag = {
        enable = true,
      }
    })
  end
}
