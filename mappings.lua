local hop = require('hop')

return {
  n = {
    ["S"] = { function() hop.hint_words({}) end, },
    ["-"] = { "<CMD>Oil<CR>" },
    ["<Up>"] = { "<Nop>" },
    ["<Down>"] = { "<Nop>" },
    ["<Left>"] = { "<Nop>" },
    ["<Right>"] = { "<Nop>" },
  },
  t = {},
  v = {},
}
