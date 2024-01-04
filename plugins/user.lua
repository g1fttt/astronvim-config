return {
  {
    "savq/melange-nvim",
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
          { fg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("CursorLineNr")), "fg", "gui") },
        },
        use_treesitter = false,
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
  { "LhKipp/nvim-nu", ft = { "nu" } },
  {
    "j-hui/fidget.nvim",
    tag = "v1.0.0",
    event = "BufEnter",
    opts = {},
  },
  {
    "Saecki/crates.nvim",
    tag = "stable",
    event = { "BufRead Cargo.toml" },
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      null_ls = { enabled = true },
    },
  }
}
