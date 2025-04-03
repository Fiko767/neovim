return {
  "numToStr/FTerm.nvim",
  config = function()
    require("FTerm").setup({
      border = "rounded",
      dimensions = {
        height = 0.9,
        width = 0.9,
      },
    })

    map("n", "<leader>t", require("FTerm").toggle)
  end,
}
