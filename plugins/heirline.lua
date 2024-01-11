return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    local status = require("astronvim.utils.status")
    opts.statusline = {
      -- default highlight for the entire statusline
      hl = { fg = "fg", bg = "bg" },

      -- add the vim mode component
      status.component.mode {
        -- enable mode text with padding as well as an icon before it
        mode_text = { icon = { kind = "VimIcon", padding = { right = 1, left = 1 } } },
        -- surround the component with a separators
        surround = {
          -- it's a left element, so use the left separator
          separator = "left",
          -- set the color of the surrounding based on the current mode using astronvim.utils.status module
          color = function() return { main = status.hl.mode_bg(), right = "blank_bg" } end,
        },
      },
      -- we want an empty space here so we can use the component builder to make a new section with just an empty string
      status.component.builder {
        { provider = "" },
        -- define the surrounding separator and colors to be used inside of the component
        -- and the color to the right of the separated out section
        surround = { separator = "left", color = { main = "blank_bg", right = "file_info_bg" } },
      },
      -- add a section for the currently opened file information
      status.component.file_info {
        file_icon = false,
        filename = { fallback = "Empty" },
        -- add padding,
        padding = { right = 1 },
        -- define the section separator
        surround = { separator = "left", condition = false },
      },
      -- add a component for the current git branch if it exists and use no separator for the sections
      status.component.git_branch { surround = { separator = "none" } },
      -- add a component for the current git diff if it exists and use no separator for the sections
      status.component.git_diff { padding = { left = 1 }, surround = { separator = "right" } },
      -- fill the rest of the statusline
      -- the elements after this will appear in the middle of the statusline
      status.component.fill(),
      -- fill the rest of the statusline
      -- the elements after this will appear on the right of the statusline
      status.component.fill(),
      status.component.diagnostics { surround = { separator = "right" } },
      status.component.file_info {
        filetype = {},
        filename = false,
        file_modified = false,
        surround = { separator = "right" }
      },
      {
        status.component.nav {
          percentage = { padding = { right = 1 } },
          ruler = false,
          scrollbar = false,
          surround = { separator = "none", color = "file_info_bg" },
        },
      },
    }
    opts.winbar = nil
    return opts
  end,
}
