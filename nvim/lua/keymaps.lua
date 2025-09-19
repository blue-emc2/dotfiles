vim.keymap.set("n", "<leader>tf", function()
    require("telescope.builtin").find_files({
        tabe_on_enter = true,
    })
end, { desc = "Find files in new tab" })

vim.keymap.set("n", "<Up>", "<Nop>")
vim.keymap.set("n", "<Down>", "<Nop>")
vim.keymap.set("n", "<Left>", "<Nop>")
vim.keymap.set("n", "<Right>", "<Nop>")

vim.keymap.set('t', '<C-[>', '<C-\\><C-n>')

-- LSP関連のキーマッピング
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, { desc = "Find references" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show documentation" })

-- barbar.nvim のキーマッピング
vim.keymap.set("n", "<C-x>", "<Cmd>BufferClose<CR>", { desc = "Close buffer" })
vim.keymap.set("n", "<C-p>", "<Cmd>BufferPrevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<C-n>", "<Cmd>BufferNext<CR>", { desc = "Next buffer" })
