-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete without copying into register
keymap.set("n", "d", '"_d')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leadem>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
keymap.set(
  "n",
  "<leader>te",
  "<cmd>TermExec size=100 direction=vertical name=Terminal cmd='clear'<CR>",
  { desc = "Open New Terminal" }
)

keymap.set(
  "n",
  "<leader>cr",
  "<cmd>TermExec size=100 direction=vertical name=Terminal cmd='clear; cargo run'<CR>",
  { desc = "Cargo run" }
)

keymap.set(
  "n",
  "<leader>cb",
  "<cmd>TermExec size=100 direction=vertical name=Terminal cmd='clear; cargo build'<CR>",
  { desc = "Cargo build" }
)
