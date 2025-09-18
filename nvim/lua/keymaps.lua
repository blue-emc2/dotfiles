vim.keymap.set("n", "<leader>tf", function()
    require("telescope.builtin").find_files({
        tabe_on_enter = true,
    })
end, { desc = "Find files in new tab" })

vim.keymap.set("n", "<Up>", "<Nop>")
vim.keymap.set("n", "<Down>", "<Nop>")
vim.keymap.set("n", "<Left>", "<Nop>")
vim.keymap.set("n", "<Right>", "<Nop>")
-- barbar.nvim のキーマッピング
vim.keymap.set("n", "<C-x>", "<Cmd>BufferClose<CR>", { desc = "Close buffer" })
vim.keymap.set("n", "<C-p>", "<Cmd>BufferPrevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<C-n>", "<Cmd>BufferNext<CR>", { desc = "Next buffer" })
