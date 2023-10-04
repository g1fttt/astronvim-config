return {
  {
    "catppuccin/nvim",
    priorty = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato",
      })
    end,
  },
  {
    "shellRaining/hlchunk.nvim",
    event = "UIEnter",
    opts = {
      line_num = { enable = false },
      blank = { enable = false },
      indent = {
        enable = true,
        use_treesitter = false,
      },
    },
  },
  {
    "stevearc/oil.nvim",
    event = "UIEnter",
    opts = {
      default_file_explorer = false,
      view_options = {
        show_hidden = true,
        is_hidden_file = function(name, _)
          return vim.startswith(name, '.')
        end,
      }
    },
  }
}
