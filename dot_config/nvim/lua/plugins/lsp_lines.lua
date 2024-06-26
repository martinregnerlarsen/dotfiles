return {
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("lsp_lines").setup()
      vim.diagnostic.config({
        virtual_text = false,
      })
    end,
    keys = {
      {
        "<leader>ct",
        function()
          require("lsp_lines").toggle()
        end,
        desc = "Toggle LSP diagnostics",
      },
    },
  },
}
