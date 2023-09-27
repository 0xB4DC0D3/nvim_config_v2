return {
  "mfussenegger/nvim-dap",
  config = function()
    vim.fn.sign_define("DapStopped", { text = "󰁕", texthl = "DiagnosticWarn" })
    vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DiagnosticInfo" })
    vim.fn.sign_define("DapBreakpointRejected", { text = "", texthl = "DiagnosticError" })
    vim.fn.sign_define("DapBreakpointCondition", { text = "", texthl = "DiagnosticInfo" })
    vim.fn.sign_define("DapLogPoint", { text = ".>", texthl = "DiagnosticInfo" })

    local dap = require("dap")
    local mason_registry = require("mason-registry")

    if mason_registry.has_package("codelldb") then 
      local codelldb = mason_registry.get_package('codelldb'):get_install_path() .. '/extension/adapter/codelldb.exe'

      if vim.fn.has("mac") == 1 then
        codelldb = mason_registry.get_package('codelldb'):get_install_path() .. '/extension/adapter/codelldb'
      end

      dap.adapters.codelldb = {
        type = 'server',
        port = '${port}',
        executable = {
          command = codelldb,
          args = {
            "--port", "${port}",
            "--settings", '{ "showDisassembly": "never" }'
          },
        }
      }

      dap.configurations.rust = {
        {
          name = "Rust debug",
          type = "codelldb",
          request = "launch",
          program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
          end,
          cwd = '${workspaceFolder}',
        },
      }
    end
  end
}
