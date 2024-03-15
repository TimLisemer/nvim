return {
  "mrcjkb/rustaceanvim",
  version = "^4", -- Recommended
  ft = { "rust" },
  dependencies = "neovim/nvim-lspconfig",
  config = function()
    local on_attach = require("files.plugins.lsp.lspconfig").on_attach
    local capabilities = require("files.plugins.lsp.lspconfig").capabilities

    vim.g.rustaceanvim = {
      -- Plugin configuration
      tools = {},
      -- LSP configuration
      server = {
        on_attach = on_attach,
        capabilities = capabilities,

        default_settings = {
          -- rust-analyzer language server configuration
          ["rust-analyzer"] = {},
        },
      },
      -- DAP configuration
      dap = {},
    }
  end,
}
