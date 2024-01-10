local hop = require('hop')

return {
  n = {
    ["<leader>s"] = { name = "󰣉 Hop" },
    ["<leader>sw"] = {
      function() hop.hint_words({}) end,
      desc = "Hint words",
    },
    ["<leader>sc"] = {
      function() hop.hint_char1({}) end,
      desc = "Hint char",
    },
    ["<leader>sa"] = {
      function() hop.hint_anywhere({}) end,
      desc = "Hint anywhere",
    },
    ["-"] = { "<CMD>Oil<CR>" },
  },
  t = {},
  v = {},
}
