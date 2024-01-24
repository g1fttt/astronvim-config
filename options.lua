local opts = {
  opt = {
    relativenumber = true,
    spell = false,
    swapfile = false,
  },
  g = {
    resession_enabled = true,
    zig_fmt_autosave = false,
    lsp_document_highlight_enabled = false,
    cmdheight = 1,
  },
}

if vim.fn.has('wsl') then
  local win32yank = "/mnt/d/win32yank-x64/win32yank.exe"
  opts.g.clipboard = {
    name = 'wslclipboard',
    copy = {
      ["+"] = { win32yank, '-i', '--crlf' },
      ["*"] = { win32yank, '-i', '--crlf' },
    },
    paste = {
      ["+"] = { win32yank, '-o', '--lf' },
      ["*"] = { win32yank, '-o', '--lf' },
    },
  }
end

return opts
