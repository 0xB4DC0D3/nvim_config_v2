return {
  "rcarriga/nvim-dap-ui",
  config = true,
  opts = function(_, opts)
    local dap, dapui = require("dap"), require("dapui")
    dap.listeners.after.event_initialized["dapui_config"] = function()
      vim.cmd("Neotree close")
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      vim.defer_fn(function() 
        vim.cmd("Neotree show")
      end, 10)
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      vim.defer_fn(function() 
        vim.cmd("Neotree show") 
      end, 10)
      dapui.close()
    end
  end
}
