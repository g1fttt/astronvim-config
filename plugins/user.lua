return {
  {
    "zootedb0t/citruszest.nvim",
    priority = 1000,
  },
  {
    "shellRaining/hlchunk.nvim",
    event = "UIEnter",
    opts = {
      line_num = { enable = false },
      blank = { enable = false },
      chunk = {
        style = {
          { fg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("LineNr")), "fg", "gui") },
        },
      },
      indent = {
        enable = true,
        style = {
          { fg = "#585e59" },
        },
      },
    },
  },
  {
    "stevearc/oil.nvim",
    event = "UIEnter",
    opts = {
      skip_confirm_for_simple_edits = true,
      default_file_explorer = false,
      view_options = {
        show_hidden = true,
        is_hidden_file = function(name, _)
          return vim.startswith(name, '.')
        end,
      }
    },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "UIEnter",
    opts = {
      signs = false,
      highlight = { keyword = "bg" },
    },
  },
}
