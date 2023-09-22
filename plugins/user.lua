return {
  { "savq/melange-nvim", lazy = false },
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
    config = function()
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" } )
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
  },
  {
    "shellRaining/hlchunk.nvim",
    event = "UIEnter",
    config = function()
      --  FIXME
      --- @diagnostic disable: missing-fields
      require("hlchunk").setup({
        line_num = { enable = false },
        blank = { enable = false },
        indent = {
          enable = true,
          chars = { "|" },
          use_treesitter = false,
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
  },
  {
    "elihunter173/dirbuf.nvim",
    event = "BufEnter", -- NOTE: Buggy with Neo-Tree
    config = function() require("dirbuf").setup({}) end
  }
}
