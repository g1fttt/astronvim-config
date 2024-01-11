local hl = require("astronvim.utils").get_hlgroup

local whitespace = hl("Whitespace")

return {
  FloatBorder = { fg = whitespace.fg },
  TelescopeBorder = { fg = whitespace.fg },
  Visual = { fg = nil, bg = "#005369" },
}
