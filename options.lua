return {
  opt = {
    relativenumber = true,
    spell = false,
    signcolumn = "number",
    guifont = "Hack:h12",
  },
  g = {
    resession_enabled = true, -- enable experimental resession.nvim session management (will be default in AstroNvim v4)
    neovide_hide_mouse_when_typing = true,
    neovide_cursor_vfx_mode = "ripple",
  },
}

-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
