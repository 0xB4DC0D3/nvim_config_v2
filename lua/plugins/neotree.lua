return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      hide_root_node = true,
      filesystem = {
        use_libuv_file_watcher = true,
      },
      window = {
        mappings = {
          ["l"] = "open"
        }
      }
    })
  end
}
