-- return {
--   "olivercederborg/poimandres.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("poimandres").setup({})
--   end,
--   init = function()
--     vim.cmd("colorscheme poimandres")
--   end
-- }

--return {
--  "projekt0n/github-nvim-theme",
--  config = function()
--    require('github-theme').setup({})
--
--    vim.cmd('colorscheme github_dark')
--  end
--}

-- return {
--   "nyoom-engineering/oxocarbon.nvim",
--   config = function()
--     vim.cmd("colorscheme oxocarbon")
--   end
-- }

-- return {
--   {
--     "rebelot/kanagawa.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--       require("kanagawa").setup()
--       vim.cmd("colorscheme kanagawa")
--     end
--   }
-- }

return {
  "navarasu/onedark.nvim",
  config = function()
    require("onedark").load()
  end
}
