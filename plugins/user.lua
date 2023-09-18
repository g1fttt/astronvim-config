return {
  "savq/melange-nvim",
  {
    "shellRaining/hlchunk.nvim",
    event = { "UIEnter" },
    config = function()
      --  FIXME
      --- @diagnostic disable: missing-fields
      require("hlchunk").setup({
        line_num = { enable = false },
        blank = { enable = false },
        indent = {
          enable = true,
          chars = { "|" },
          use_treesitter = true,
          style = {
            vim.fn.synIDattr(
              vim.fn.synIDtrans(
                vim.fn.hlID("Whitespace")
              ),
              "fg",
              "gui"
            ),
          },
        },
      })
    end
  }
}
