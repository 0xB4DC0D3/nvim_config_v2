return {
  {
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
          {
            name = "Rust debug (test)",
            type = "codelldb",
            request = "launch",
            program = function()
              return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
            end,
            cwd = '${workspaceFolder}',
          }
        }
      end

      for _, language in ipairs({ "typescript", "javascript", "typescriptreact", "javascriptreact" }) do
        dap.configurations[language] = {
          {
            type = "pwa-node",
            request = "launch",
            name = "Launch file",
            program = "${file}",
            cwd = "${workspaceFolder}",
          },
          {
            type = "pwa-node",
            request = "attach",
            name = "Attach",
            processId = require'dap.utils'.pick_process,
            cwd = "${workspaceFolder}",
          },
          {
            name = "Launch debug (TypeScript, JavaScript)",
            type = "pwa-chrome",
            request = "launch",
            port = 9222,
            url = "http://localhost:3000",
            webRoot = "${workspaceFolder}",
            protocol = "inspector",
          },
          {
            type = "pwa-chrome",
            request = "attach",
            port = "${port}",
            name = "Attach debug (TypeScript, JavaScript)",
            processId = require'dap.utils'.pick_process,
            cwd = "${workspaceFolder}",
          }
        }
      end
    end
  },
  {
    "msxdev/nvim-dap-vscode-js",
    build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
    config = function()
      require("dap-vscode-js").setup({
        debugger_path = vim.fn.stdpath('data') .. '/mason/packages/js-debug-adapter',
        debugger_cmd = { 'js-debug-adapter' },
      })
    end
  }
}
