return {
  {
    "kdheepak/lazygit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      -- Set a keybinding to open lazygit
      vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<CR>", { desc = "Open LazyGit" })
    end,
  },
  {
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
      -- Set keybindings for Gitsigns using vim.keymap.set
      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Preview Git Hunk" })
      vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle Git Blame" })
    end,
  },
}
