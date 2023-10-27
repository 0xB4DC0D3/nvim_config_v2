vim.g.mapleader = " "

local setkey = vim.keymap.set

-- Move between windows using Ctrl + h/j/k/l
setkey("n", "<leader>h", "<C-w>h", { noremap = true, silent = true, desc = "Move to left window" })
setkey("n", "<leader>j", "<C-w>j", { noremap = true, silent = true, desc = "Move to window below" })
setkey("n", "<leader>k", "<C-w>k", { noremap = true, silent = true, desc = "Move to window above" })
setkey("n", "<leader>l", "<C-w>l", { noremap = true, silent = true, desc = "Move to right window" })

-- Increase/decrease window size using Ctrl + Left/Up/Down/Right
setkey("n", "<Space><Left>", "<C-w><", { noremap = true, silent = true, desc = "Increase/decrease window size to left" })
setkey("n", "<Space><Up>", "<C-w>+", { noremap = true, silent = true, desc = "Increase/decrease window size to up" })
setkey("n", "<Space><Down>", "<C-w>-", { noremap = true, silent = true, desc = "Increase/decrease window size to down" })
setkey("n", "<Space><Right>", "<C-w>>", { noremap = true, silent = true, desc = "Increase/decrease window size to right" })

-- Create horizontal and vertical screen using 'ss' and 'sv'
setkey("n", "ss", "<cmd>split<CR>", { noremap = true, silent = true, desc = "Split window horizontally" })
setkey("n", "sv", "<cmd>vsplit<CR>", { noremap = true, silent = true, desc = "Split window vertically" })

-- Neo-tree
setkey("n", "<leader>e", "<cmd>Neotree toggle<CR>", { noremap = true, silent = true, desc = "[Neo-tree] Toggle" })
setkey("n", "<leader>o", "<cmd>Neotree focus<CR>", { noremap = true, silent = true, desc = "[Neo-tree] Focus" })

-- Telescope
setkey("n", "<leader>ff", function() require("telescope.builtin").find_files() end, { noremap = true, silent = true, desc = "[Telescope] Find files" })
setkey("n", "<leader>fg", function() require("telescope.builtin").live_grep() end, { noremap = true, silent = true, desc = "[Telescope] Find files" })

-- Bufferline
setkey("n", ",", "<cmd>BufferPrevious<CR>", { noremap = true, silent = true, desc = "[Barbar] Navigate to previous tab" })
setkey("n", ".", "<cmd>BufferNext<CR>", { noremap = true, silent = true, desc = "[Barbar] Navigate to next tab" })
setkey("n", "<", "<cmd>BufferMovePrevious<CR>", { noremap = true, silent = true, desc = "[Barbar] Move tab to left" })
setkey("n", ">", "<cmd>BufferMoveNext<CR>", { noremap = true, silent = true, desc = "[Barbar] Move tab to right" })
setkey("n", "<A-1>", "<cmd>BufferGoto 1<CR>", { noremap = true, silent = true, desc = "[Barbar] Goto 1 tab" })
setkey("n", "<A-2>", "<cmd>BufferGoto 2<CR>", { noremap = true, silent = true, desc = "[Barbar] Goto 2 tab" })
setkey("n", "<A-3>", "<cmd>BufferGoto 3<CR>", { noremap = true, silent = true, desc = "[Barbar] Goto 3 tab" })
setkey("n", "<A-4>", "<cmd>BufferGoto 4<CR>", { noremap = true, silent = true, desc = "[Barbar] Goto 4 tab" })
setkey("n", "<A-5>", "<cmd>BufferGoto 5<CR>", { noremap = true, silent = true, desc = "[Barbar] Goto 5 tab" })
setkey("n", "<A-6>", "<cmd>BufferGoto 6<CR>", { noremap = true, silent = true, desc = "[Barbar] Goto 6 tab" })
setkey("n", "<A-7>", "<cmd>BufferGoto 7<CR>", { noremap = true, silent = true, desc = "[Barbar] Goto 7 tab" })
setkey("n", "<A-8>", "<cmd>BufferGoto 8<CR>", { noremap = true, silent = true, desc = "[Barbar] Goto 8 tab" })
setkey("n", "<A-9>", "<cmd>BufferGoto 9<CR>", { noremap = true, silent = true, desc = "[Barbar] Goto 9 tab" })
setkey("n", "<A-0>", "<cmd>BufferLast<CR>", { noremap = true, silent = true, desc = "[Barbar] Goto last tab" })
setkey("n", "<A-c>", "<cmd>BufferClose<CR>", { noremap = true, silent = true, desc = "[Barbar] Close tab" })

-- DAP
setkey("n", "<F5>", function() require("dap").continue() end, { noremap = true, silent = true, desc = "[Debugger] Start/Continue (F5)" }) 
setkey("n", "<F6>", function() require("dap").terminate() end, { noremap = true, silent = true, desc = "[Debugger] Terminate (F6)" }) 
setkey("n", "<F9>", function() require("dap").step_into() end, { noremap = true, silent = true, desc = "[Debugger] Step into (F9)" }) 
setkey("n", "<F10>", function() require("dap").step_over() end, { noremap = true, silent = true, desc = "[Debugger] Step over (F10)" }) 
setkey("n", "<F11>", function() require("dap").step_out() end, { noremap = true, silent = true, desc = "[Debugger] Step over (F11)" }) 
setkey("n", "<F8>", function() require("dap").toggle_breakpoint() end, { noremap = true, silent = true, desc = "[Debugger] Step over (F8)" }) 
setkey("n", "<C-F5>", function() require("dap").restart_frame() end, { noremap = true, silent = true, desc = "[Debugger] Restart (Ctrl + F5)" }) 

-- LSP
setkey('n', 'gD', vim.lsp.buf.declaration, opts)
setkey('n', 'gd', vim.lsp.buf.definition, opts)
setkey('n', 'K', vim.lsp.buf.hover, opts)
setkey('n', 'gi', vim.lsp.buf.implementation, opts)
setkey('n', '<C-k>', vim.lsp.buf.signature_help, opts)
setkey('n', '<leader>D', vim.lsp.buf.type_definition, opts)
setkey('n', '<leader>rn', vim.lsp.buf.rename, opts)
setkey({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
setkey('n', 'gr', function() require("telescope.builtin").lsp_references() end, opts)
setkey('n', '<leader>sd', function() require("telescope.builtin").diagnostics() end, opts)

-- ToggleTerm
setkey('n', '<F7>', '<cmd>ToggleTerm direction=float<CR>', { noremap = true, silent = true, desc = "[ToggleTerm] Show/hide terminal" })
setkey('t', '<F7>', '<cmd>ToggleTerm direction=float<CR>', { noremap = true, silent = true, desc = "[ToggleTerm] Show/hide terminal" })

-- Symbols Outline
setkey('n', '<F4>', '<cmd>SymbolsOutline<CR>', { noremap = true, silent = true, desc = '[Symbols] Toggle symbols table' })

-- Trouble.nvim
setkey('n', '<F3>', '<cmd>TroubleToggle<CR>', { noremap = true, silent = true, desc = '[Trouble] Toggle troubles list' })
