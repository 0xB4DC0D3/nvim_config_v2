return {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup()
    require("mason-lspconfig").setup_handlers({
      function(server)
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        require("lspconfig")[server].setup({
          capabilities = capabilities
        })

        vim.fn.sign_define("DiagnosticSignError", { text = "", texthl = "DiagnosticSignError" })
        vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })
        vim.fn.sign_define("DiagnosticSignHint", { text = "󰋼", texthl = "DiagnosticSignHint" })
        vim.fn.sign_define("DiagnosticSignInfo", { text = "󰋼", texthl = "DiagnosticSignInfo" })
      end,
    })
  end
}
