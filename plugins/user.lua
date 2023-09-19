return {
  "savq/melange-nvim",
  {
    "shellRaining/hlchunk.nvim",
    event = "UIEnter",
    config = function()
      --  FIXME
      --- @diagnostic disable: missing-fields
      require("hlchunk").setup({
        line_num = { enable = false },
        blank = { enable = false },
        indent = {
          enable = true,
          chars = { "|" },
          use_treesitter = false,
          style = {
            vim.fn.synIDattr(
              vim.fn.synIDtrans(
                vim.fn.hlID("Whitespace")
              ),
              "fg",
              "gui"
            ),
          },
        },
      })
    end
  },
  {
    "rktjmp/paperplanes.nvim",
    event = "BufEnter",
    -- TODO: Append buffer extension after link
    -- https://github.com/rktjmp/paperplanes.nvim#configuration--use
    config = function()
      require("paperplanes").setup({
        register = "*",
        provider = "paste.rs",
        provider_options = {},
        notifier = vim.notify,
      })
    end
  },
}
