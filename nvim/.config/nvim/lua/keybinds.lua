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

-- leader-e to diagnose the error
map("n", "<leader>e", vim.diagnostic.open_float)

-- Easy splits
map("n", "<leader>vs", ":vsplit<CR>")
map("n", "<leader>hs", ":split<CR>")

-- Open terminal in splits
map("n", "<leader>ts", ":split | terminal<CR>")

-- Resize splits easily
map("n", "<A-h>", "<C-w><", { desc = "Resize left" })
map("n", "<A-l>", "<C-w>>", { desc = "Resize right" })
map("n", "<A-j>", "<C-w>-", { desc = "Resize down" })
map("n", "<A-k>", "<C-w>+", { desc = "Resize up" })

-- Easier navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
