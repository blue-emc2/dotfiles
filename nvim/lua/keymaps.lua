vim.keymap.set("n", "<leader>tf", function()
    require("telescope.builtin").find_files({
        tabe_on_enter = true,
    })
end, { desc = "Find files in new tab" })

vim.keymap.set("n", "<Up>", "<Nop>")
vim.keymap.set("n", "<Down>", "<Nop>")
vim.keymap.set("n", "<Left>", "<Nop>")
vim.keymap.set("n", "<Right>", "<Nop>")
