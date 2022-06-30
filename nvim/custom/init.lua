-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- map("n", "<C-Left>", ":tabprevious<CR>", {silent = true})
-- map("n", "<C-Right>", ":tabnext<CR>", {silent = true})
map("n", "<C-Right>", ":Tbufnext<CR>", {silent = true})
map("n", "<C-Left>", ":Tbufprev<CR>", {silent = true})


--map("n", ",<Space>", ":nohlsearch<CR>", { silent = true })
--map("n", "<Leader>", ":<C-u>WhichKey ','<CR>" { silent = true })
--map("n", "<Leader>?", ":WhichKey ','<CR>")
--map("n", "<Leader>a", ":cclose<CR>")
