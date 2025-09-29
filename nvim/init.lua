require("options")
require("config.lazy")
require("keymaps")

-- 画面分割を右側に
vim.opt.splitright = true

vim.o.clipboard = "unnamedplus"
vim.o.termguicolors = true
vim.o.fileencodings = "utf-8,euc-jp"
vim.o.fileencoding = "utf-8"

vim.opt.list = true
vim.opt.listchars = "tab:>-"

-- インデントを自動で調整
vim.opt.autoindent = true
vim.opt.smartindent = true

-- タブをスペースに変換する
vim.opt.expandtab = true

-- インデントの幅を設定
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.lsp.enable('phpactor')

