vim.g.mapleader = " "

local setkey = vim.keymap.set

-- Move between windows using Ctrl + h/j/k/l
setkey("n", "<C-h>", "<C-w>h", { noremap = true, silent = true, desc = "Move to left window" })
setkey("n", "<C-j>", "<C-w>j", { noremap = true, silent = true, desc = "Move to window below" })
setkey("n", "<C-k>", "<C-w>k", { noremap = true, silent = true, desc = "Move to window above" })
setkey("n", "<C-l>", "<C-w>l", { noremap = true, silent = true, desc = "Move to right window" })

-- Increase/decrease window size using Ctrl + Left/Up/Down/Right
setkey("n", "<C-Left>", "<C-w><", { noremap = true, silent = true, desc = "Increase/decrease window size to left" })
setkey("n", "<C-Up>", "<C-w>+", { noremap = true, silent = true, desc = "Increase/decrease window size to up" })
setkey("n", "<C-Down>", "<C-w>-", { noremap = true, silent = true, desc = "Increase/decrease window size to down" })
setkey("n", "<C-Right>", "<C-w>>", { noremap = true, silent = true, desc = "Increase/decrease window size to right" })

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
setkey("n", ",", "<cmd>BufferLineCyclePrev<CR>", { noremap = true, silent = true, desc = "[Bufferline] Navigate to previous tab" })
setkey("n", ".", "<cmd>BufferLineCycleNext<CR>", { noremap = true, silent = true, desc = "[Bufferline] Navigate to next tab" })

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
setkey('n', '<space>D', vim.lsp.buf.type_definition, opts)
setkey('n', '<space>rn', vim.lsp.buf.rename, opts)
setkey({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
setkey('n', 'gr', vim.lsp.buf.references, opts)
