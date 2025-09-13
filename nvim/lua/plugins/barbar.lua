return {
  "romgrk/barbar.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  init = function()
    vim.g.barbar_auto_hide = 1
    vim.g.barbar_show_tabs = 0
  end,
  config = function()
    require("barbar").setup()

    vim.keymap.set("n", "<C-p>", "<Cmd>BufferPrevious<CR>", { desc = "Previous buffer" })
    vim.keymap.set("n", "<C-n>", "<Cmd>BufferNext<CR>", { desc = "Next buffer" })
  end
}
