return {
  {
    "olivercederborg/poimandres.nvim",
    name = "poimandres",
    priority = 1,
  },
  {
    "olimorris/onedarkpro.nvim",
    name = "onedarkpro",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("onedark_dark")
    end,
  },
}
