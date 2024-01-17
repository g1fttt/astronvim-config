local hop = require('hop')

return {
  n = {
    ["S"] = { function() hop.hint_words({}) end, },
    ["-"] = { "<CMD>Oil<CR>" },
  },
  t = {},
  v = {},
}
