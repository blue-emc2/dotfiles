return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<c-t>]],
      size = 20, -- ターミナルの高さ
      direction = "float", -- ターミナルの表示方法 ("float", "vertical", "horizontal")
    })
  end,
}
