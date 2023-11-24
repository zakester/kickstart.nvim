return {
  "christoomey/vim-tmux-navigator",
  lazy = false,
  config = function()
    -- keybinds
    vim.api.nvim_set_keymap("n", "<C-K>", ":TmuxNavigateUp<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<C-J>", ":TmuxNavigateDown<CR>", { noremap = true, silent = true })
  end
}
