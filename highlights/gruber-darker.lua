local get_hlgroup = require("astronvim.utils").get_hlgroup

return {
  ["@property"] = { fg = get_hlgroup("@variable").fg },
}
