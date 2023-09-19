return function(local_vim)
  local_vim.opt.relativenumber = true
  local_vim.opt.spell = false

  local_vim.g.resession_enabled = true

  if vim.g.neovide then
    local_vim.opt.guifont = "Hack:h12"

    local_vim.g.neovide_hide_mouse_when_typing = true
    local_vim.g.neovide_cursor_vfx_mode = "ripple"
  else
    local_vim.g.icons_enabled = false
  end

  return local_vim
end
