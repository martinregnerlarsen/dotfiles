return {
  {
    "echasnovski/mini.pairs",
    enabled = false,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = { "Issafalcon/lsp-overloads.nvim" },
    opts = {
      setup = {
        ["*"] = function()
          require("lazyvim.util").on_attach(function(client)
            if client.server_capabilities.signatureHelpProvider then
              require("lsp-overloads").setup(client, {})
            end
          end)
        end,
      },
    },
  },
}
