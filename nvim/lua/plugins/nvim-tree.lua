-- lua/plugins/nvim-tree.lua
return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
      },
      git = {
        enable = true,
        ignore = false,
      },
    })

    -- nvim-treeのキーマッピング
    local nvim_tree = require("nvim-tree.api")
    vim.keymap.set("n", "<leader>e", nvim_tree.tree.toggle, { desc = "Toggle File Tree" })
  end,
}
