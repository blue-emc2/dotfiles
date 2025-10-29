return {
  -- nvim-cmp: 補完エンジン本体
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "zbirenbaum/copilot.lua",
      "copilotlsp-nvim/copilot-lsp",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        sources = cmp.config.sources({
          { name = "copilot", group_index = 2 },
          { name = "nvim_lsp", group_index = 2 },
          { name = "luasnip", group_index = 1 },
          { name = "buffer", group_index = 1 },
          { name = "path", group_index = 1 },
        }),

        mapping = cmp.mapping.preset.insert({
          ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
          ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
          ["<C-d>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<C-e>"] = cmp.mapping.abort(),
        }),
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        performance = {
          debounce_time = 50,
        },
      })
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "zbirenbaum/copilot.lua", config = true },
      "nvim-lua/plenary.nvim",
    },
    opts = {
      -- コマンドのショートカットを設定
      prompts = {
        Explain = {
          prompt = "選択したコードの説明を日本語で書いてください",
        },
        Review = {
          prompt = "コードを日本語でレビューしてください",
        },
        Fix = {
          prompt = "このコードには問題があります。バグを修正したコードを表示してください。説明は日本語でお願いします",
        },
        Refactor = {
          prompt = "選択したコードを最適化し、パフォーマンスと可読性を向上させてください。日本語で説明してください",
        },
      },
      mappings = {
        complete = {
          insert = "<C-e>",
        },
      },
      window = {
        layout = 'vertical',
        width = 0.3
      }
    },
  },
}
