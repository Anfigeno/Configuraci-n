return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      handlers = { function(servidor)
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        require('lspconfig')[servidor].setup {
          capabilities = capabilities
        }
      end }
    })
  end
}
