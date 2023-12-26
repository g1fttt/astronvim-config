return {
  n = {
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<F11>"] = function() vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen end,
    ["-"] = { "<CMD>Oil<CR>" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {},
}
