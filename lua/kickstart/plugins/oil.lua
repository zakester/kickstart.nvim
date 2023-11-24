return {
  'stevearc/oil.nvim',
  config = function()
    require("oil").setup {
      use_default_keymaps = false,
      keymaps = {
        ["<CR>"] = "actions.select",
      }
    }
    -- oil
    vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
  end
}
