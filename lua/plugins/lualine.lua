return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				globalstatus = true,
				disabled_filetypes = {
					"filesystem", "neo-tree"
				}
			}
		})
	end
}
