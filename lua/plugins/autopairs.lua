return {
  'windwp/nvim-ts-autotag',
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {
      disable_filetype = { "TelescopePrompt" , "vim", "neo-tree", "filesystem" },
      check_ts = true
    },
    config = function()
      require("nvim-autopairs").setup()

      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      local cmp = require('cmp')

      cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done({ tex = false })
      )
    end
  }
}
