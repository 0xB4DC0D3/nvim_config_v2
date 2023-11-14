local opt = vim.opt
local diagnostic = vim.diagnostic

opt.number = true
opt.relativenumber = true
opt.autowrite = true
opt.autoindent = true
opt.tabstop = 2
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.smarttab = true
opt.ignorecase = true
opt.smartcase = true
opt.breakindent = true
opt.cursorline = true
opt.hlsearch = true
opt.scrolloff = 10
opt.sidescrolloff = 10
opt.splitbelow = true
opt.splitright = true
opt.wrap = false
opt.backspace = "indent,eol,start"
opt.termguicolors = true
opt.showcmd = true
opt.cmdheight = 0
opt.clipboard:append({ "unnamed", "unnamedplus" })
opt.signcolumn = "yes"
opt.fillchars = "eob: ,diff:╱"

diagnostic.config({
  severity_sort = true
})
