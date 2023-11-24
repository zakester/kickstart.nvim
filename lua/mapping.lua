-- Split Windows remapping
local windowsmapping = {
  -- Navigating
  -- { 'n', '<C-J>', '<C-W><C-J>' }, -- Move down.
  -- { 'n', '<C-K>', '<C-W><C-K>' }, -- Move up.
  { 'n', '<C-L>', '<C-W><C-L>' },                -- Move right.
  { 'n', '<C-H>', '<C-W><C-H>' },                -- Move left.
  -- Resizeing
  { "n", "<C-->", "<C-W><C-->" },                -- reduce hight.
  { "n", "<C-<>", "<C-W><C-<>" },                -- reduce width.
  { "n", "<C-9>", ":vertical resize +999<CR>" }, -- max out the width.
  { "n", "<C-0>", "<C-W><C-=>" },                -- rest size.
}

for _, mapping in ipairs(windowsmapping) do
  vim.api.nvim_set_keymap(mapping[1], mapping[2], mapping[3], { noremap = true, silent = true })
end

-- Buffers
vim.keymap.set("n", "<leader>xQ", ":qall<CR>", { desc = "Close vim without saving." })
vim.keymap.set("n", "<leader>xq", ":wa<CR>:qall<CR>", { desc = "Save-all and close vim." })
vim.keymap.set("n", "<leader>xx", ":bd<CR>", { desc = "Close current buffer." })
