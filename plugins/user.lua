return {
  {
    "zootedb0t/citruszest.nvim",
    priority = 1000,
  },
  {
    "shellRaining/hlchunk.nvim",
    event = "BufEnter",
    opts = {
      line_num = { enable = false },
      blank = { enable = false },
      chunk = {
        style = {
          { fg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("LineNr")), "fg", "gui") },
        },
        use_treesitter = false,
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
    event = "BufEnter",
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
    "echasnovski/mini.move",
    event = "BufEnter",
    opts = {
      mappings = {
        left = "<A-Left>",
        right = "<A-Right>",
        down = "<A-Down>",
        up = "<A-Up>",
        line_left = "<A-Left>",
        line_right = "<A-Right>",
        line_down = "<A-Down>",
        line_up = "<A-Up>",
      },
    },
  },
}
