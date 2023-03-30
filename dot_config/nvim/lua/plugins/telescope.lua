return {

  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-telescope/telescope-dap.nvim" },
    },
    keys = {
      {
        "<leader>,",
        function()
          require("telescope.builtin").buffers({ sort_lastused = true, ignore_current_buffer = true })
        end,
        desc = "Show Buffers",
      },
    },
    config = function()
      require("telescope").load_extension("dap")
    end,
  },
}
