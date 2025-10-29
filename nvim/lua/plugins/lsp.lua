return {
  -- LSPサーバーのインストール管理
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
    end,
  },

  -- LSP設定（Neovim 0.11ネイティブAPI）
  {
    "hrsh7th/cmp-nvim-lsp",
    config = function()
      -- 補完機能の設定
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- LSP共通のキーマッピング（LspAttach自動コマンド）
      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(ev)
          local opts = { buffer = ev.buf, noremap = true, silent = true }
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
          vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
          vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        end,
      })

      -- TypeScript/JavaScript LSP設定
      vim.lsp.config('ts_ls', {
        cmd = { 'typescript-language-server', '--stdio' },
        filetypes = { 'typescript', 'typescriptreact', 'javascript', 'javascriptreact' },
        root_markers = { 'package.json', 'tsconfig.json', 'jsconfig.json', '.git' },
        capabilities = capabilities,
      })

      -- PHP LSP設定
      vim.lsp.config('phpactor', {
        cmd = { os.getenv('HOME') .. "/.composer/vendor/bin/phpactor", 'language-server' },
        filetypes = { 'php' },
        root_markers = { '.git', 'composer.json', '.phpactor.json', '.phpactor.yml' },
        capabilities = capabilities,
      })

      -- LSPを有効化
      vim.lsp.enable('ts_ls')
      vim.lsp.enable('phpactor')
    end,
  },
}
