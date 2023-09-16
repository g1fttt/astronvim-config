return function(local_vim)
  local_vim.opt.guifont = "Hack:h12"

  if local_vim.g.neovide then
    local_vim.g.neovide_hide_mouse_when_typing = true
    local_vim.g.neovide_cursor_vfx_mode = "ripple"
  end

  local_vim.g.resession_enabled = true

  return local_vim
end
