return {
  {
    "shellRaining/hlchunk.nvim",
    event = "BufEnter",
    opts = {
      line_num = { enable = false },
      blank = { enable = false },
      chunk = {
        chars = {
          left_top = "┌",
          left_bottom = "└",
        },
        style = {{
          fg = require("astronvim.utils").get_hlgroup("CursorLineNr").fg,
        }},
        use_treesitter = false,
      },
    },
  },
  {
    "stevearc/oil.nvim",
    event = "BufEnter",
    opts = {
      skip_confirm_for_simple_edits = true,
      view_options = {
        show_hidden = true,
        is_hidden_file = function(name, _)
          return vim.startswith(name, '.')
        end,
      },
      columns = { "icon", "size" },
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
  {
    "j-hui/fidget.nvim",
    tag = "v1.0.0",
    event = "BufEnter",
    opts = {
      notification = {
        window = {
          y_padding = 1,
        },
      },
    },
  },
  {
    "Saecki/crates.nvim",
    tag = "stable",
    event = { "BufRead Cargo.toml" },
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { null_ls = { enabled = true } },
  },
  {
    "smoka7/hop.nvim",
    event = "BufEnter",
    config = true,
  },
  {
    "blazkowolf/gruber-darker.nvim",
    priority = 1000,
  },
}
