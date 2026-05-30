return {
  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      {
        "<leader>gd",
        function()
          local actions = require("diffview.actions")
          require("diffview").open({
            view = { merge_tool = { layout = "diff3_horizontal" } },
          })
        end,
        desc = "Open Diffview",
      },
    },
  },
}
