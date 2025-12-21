local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true })
end

-- stay in visual while indeting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Quit
map("n", "<C-Q>", "<CMD>q<CR>")

-- Move to the next/previous buffer
map("n", "<leader>[", "<CMD>bp<CR>")
map("n", "<leader>]", "<CMD>bn<CR>")

-- leader-o/O inserts blank line below/above
map("n", "<leader>o", "o<ESC>")
map("n", "<leader>O", "O<ESC>")
