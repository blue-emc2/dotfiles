return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "lua", "ruby", "html", "css", "javascript", "yaml", "json", "bash", "php", "rust" },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<c-space>",
        node_incremental = "<c-space>",
        scope_incremental = "<c-s>",
        node_decremental = "<bs>",
      },
    },
  },
  config = function(_, opts)
    -- nvim-treesitter-textobjects も追加する場合は、ここで行う
    require('nvim-treesitter.configs').setup(opts)
  end,
}
